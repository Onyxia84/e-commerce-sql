<?php
// Connexion à la base de données MySQL
$mysqli = new mysqli("localhost", "root", "", "e-commerce-sql");

// Vérifier si la connexion a échoué
if ($mysqli->connect_error) {
    die("Erreur de connexion à la base de données : " . $mysqli->connect_error);
}

// Charger la bibliothèque Faker pour générer des données factices
require 'vendor/autoload.php';

$faker = Faker\Factory::create(); // Initialisation de Faker

// Préparer une requête SQL pour insérer des utilisateurs dans la table "user"
$stmt = $mysqli->prepare("
    INSERT INTO user (first_name, last_name, email, password, phone) 
    VALUES (?, ?, ?, ?, ?)
");

// Vérifier si la requête a été préparée correctement
if (!$stmt) {
    die("Erreur lors de la préparation de la requête : " . $mysqli->error);
}

// Boucle pour insérer 50 utilisateurs factices
for ($i = 0; $i < 50; $i++) {
    // Générer des données factices pour chaque utilisateur
    $firstName = $faker->firstName();
    $lastName = $faker->lastName();
    $email = $faker->unique()->email;
    $password = password_hash('password', PASSWORD_BCRYPT); // Hasher un mot de passe fictif
    $phone = preg_replace('/[^0-9]/', '', $faker->phoneNumber()); // Nettoyer le numéro de téléphone

    // Associer les valeurs générées aux paramètres de la requête
    $stmt->bind_param('sssss', $firstName, $lastName, $email, $password, $phone);

    // Exécuter la requête et capturer les erreurs éventuelles
    try {
        $stmt->execute();
    } catch (Exception $e) {
        echo "Erreur lors de l'insertion de l'utilisateur : " . $e->getMessage() . "\n";
    }
}

echo "50 utilisateurs insérés avec succès.\n";

// Insérer 50 adresses associées aux utilisateurs
for ($i = 1; $i <= 50; $i++) {
    $street = $faker->streetAddress;
    $city = $faker->city;
    $postalCode = $faker->postcode;
    $country = $faker->country;

    // Exécuter une requête SQL pour insérer l'adresse
    try {
        $mysqli->query("INSERT INTO address (user_id, street, city, postal_code, country) 
                        VALUES ($i, '$street', '$city', '$postalCode', '$country')");
    } catch (Exception $e) {
        echo "Erreur lors de l'insertion de l'adresse : " . $e->getMessage() . "\n";
    }
}
echo "50 adresses insérées.\n";

// Insérer 100 produits dans la table "product"
for ($i = 0; $i < 100; $i++) {
    $name = $faker->word;
    $description = $faker->sentence(10);
    $price = $faker->randomFloat(2, 10, 500); // Générer un prix entre 10 et 500
    $stock = $faker->numberBetween(0, 100); // Quantité en stock
    $category = $faker->word;

    try {
        $mysqli->query("INSERT INTO product (name, description, price, stock, category) 
                        VALUES ('$name', '$description', $price, $stock, '$category')");
    } catch (Exception $e) {
        echo "Erreur lors de l'insertion du produit : " . $e->getMessage() . "\n";
    }
}
echo "100 produits insérés.\n";

// Créer 50 paniers pour les utilisateurs
for ($i = 1; $i <= 50; $i++) {
    $status = $faker->randomElement(['pending', 'purchased']); // Statut aléatoire

    try {
        $mysqli->query("INSERT INTO cart (user_id, status) VALUES ($i, '$status')");
    } catch (Exception $e) {
        echo "Erreur lors de l'insertion du panier : " . $e->getMessage() . "\n";
    }
}
echo "50 paniers insérés.\n";

// Associer des produits aléatoires aux paniers
for ($i = 1; $i <= 50; $i++) {
    for ($j = 0; $j < rand(1, 5); $j++) { // Chaque panier contient entre 1 et 5 produits
        $productId = $faker->numberBetween(1, 100); // ID du produit
        $quantity = $faker->numberBetween(1, 10); // Quantité aléatoire

        try {
            $mysqli->query("INSERT INTO cart_product (cart_id, product_id, quantity) 
                            VALUES ($i, $productId, $quantity)");
        } catch (Exception $e) {
            echo "Erreur lors de l'insertion du produit dans le panier : " . $e->getMessage() . "\n";
        }
    }
}
echo "Relations cart-product insérées.\n";

// Insérer 30 commandes pour des utilisateurs aléatoires
for ($i = 1; $i <= 30; $i++) {
    $userId = $faker->numberBetween(1, 50); // ID utilisateur
    $totalPrice = $faker->randomFloat(2, 50, 1000); // Prix total
    $status = $faker->randomElement(['processing', 'shipped', 'delivered', 'cancelled']); // Statut

    try {
        $mysqli->query("INSERT INTO command (user_id, total_price, status) 
                        VALUES ($userId, $totalPrice, '$status')");
    } catch (Exception $e) {
        echo "Erreur lors de l'insertion de la commande : " . $e->getMessage() . "\n";
    }
}
echo "30 commandes insérées.\n";

// Associer des produits aléatoires aux commandes
for ($i = 1; $i <= 30; $i++) {
    for ($j = 0; $j < rand(1, 5); $j++) { // Chaque commande contient entre 1 et 5 produits
        $productId = $faker->numberBetween(1, 100);
        $quantity = $faker->numberBetween(1, 10);

        try {
            $mysqli->query("INSERT INTO command_product (command_id, product_id, quantity) 
                            VALUES ($i, $productId, $quantity)");
        } catch (Exception $e) {
            echo "Erreur lors de l'insertion du produit dans la commande : " . $e->getMessage() . "\n";
        }
    }
}
echo "Relations command-product insérées.\n";

// Générer 30 factures pour les commandes
for ($i = 1; $i <= 30; $i++) {
    $issuedAt = $faker->dateTimeThisYear->format('Y-m-d H:i:s'); // Date aléatoire de l'année
    $total = $faker->randomFloat(2, 50, 1000); // Montant de la facture

    try {
        $mysqli->query("INSERT INTO invoice (command_id, issued_at, total) 
                        VALUES ($i, '$issuedAt', $total)");
    } catch (Exception $e) {
        echo "Erreur lors de l'insertion de la facture : " . $e->getMessage() . "\n";
    }
}
echo "30 factures insérées.\n";

// Fermer la requête préparée et la connexion MySQL
$stmt->close();
$mysqli->close();
?>
