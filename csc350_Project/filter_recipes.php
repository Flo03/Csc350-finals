<?php

$servername = "localhost";
$username = "floflo";
$password = "";
$dbname = "CSC350";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$carbsRange = $_GET['carbsRange'];
$cookTimeRange = $_GET['cookTimeRange'];
$proteinRange = $_GET['proteinRange'];
$priceRange = $_GET['priceRange'];

$sql = "SELECT * FROM Meals 
        WHERE CarbsCount <= ? 
        AND CookTime <= ? 
        AND ProteinCount <= ? 
        AND MealPrice <= ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("dddd", $carbsRange, $cookTimeRange, $proteinRange, $priceRange);
$stmt->execute();
$result = $stmt->get_result();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="./main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Abhaya+Libre:500&display=swap">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filtered Recipes - WeEa't</title>
    <link rel="stylesheet" href="recipes.css">
</head>
<body>
<header>
    <h1>Filtered Recipes</h1>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="recipes.html">Recipes</a></li>
            <li><a href="about.html">About</a></li>
        </ul>
    </nav>
</header>

<main>
    <section class="recipe-list">
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<article class='recipe-item'>";
                echo "<h3>" . $row["MealName"] . "</h3>";
                echo "<img src='" . $row["MealImage"] . "' alt='" . $row["MealName"] . "'>";
                echo "<p class='description'>" . $row["MealDescription"] . "</p>";
                echo "<div class='recipe-info'>";
                echo "<div><img src='icons/protein.jpeg' alt='Protein icon'><span>" . $row["ProteinCount"] . "g Protein</span></div>";
                echo "<div><img src='icons/carbs.jpeg' alt='Carbs icon'><span>" . $row["CarbsCount"] . "g Carbs</span></div>";
                echo "<div><img src='icons/calories.jpeg' alt='Calories icon'><span>" . $row["CaloriesCount"] . "kcal</span></div>";
                echo "<div><img src='icons/time.png' alt='Cook time icon'><span>" . $row["CookTime"] . " mins</span></div>";
                echo "<div><img src='icons/price.jpeg' alt='Price icon'><span>$" . $row["MealPrice"] . "</span></div>";
                echo "</div>";
                echo "<a href='" . $row["MealRecipe"] . "' target='_blank'>View Recipe</a>";
                echo "</article>";
            }
        } else {
            echo "<p>No recipes found matching your criteria.</p>";
        }
        $stmt->close();
        $conn->close();
        ?>
    </section>
</main>

<footer>
    <p>&copy; 2024 WeEa't</p>
</footer>
</body>
</html>
