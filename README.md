# 🍽️ **WeEa't - Your Ultimate Recipe Finder** 🍽️

## 🌟 Overview

Welcome to **WeEa't**, your go-to app for discovering delicious recipes tailored to your tastes and lifestyle! Whether you're after low-carb delights, high-protein power meals, quick-cook wonders, or budget-friendly bites, WeEa't has you covered. Let's make meal planning fun and effortless!

## ✨ Features

- **Personalized Filters**: Customize your search with sliders for carbs, cook time, protein, and price.
- **Sleek Interface**: Clean and intuitive design for a seamless experience.
- **Detailed Recipe Info**: Get comprehensive details, including nutritional information and cook times.
- **Responsive Design**: Enjoy WeEa't on any device, anytime, anywhere.

## 🚀 Getting Started

### Prerequisites

- Web server (Apache, Nginx)
- PHP 7.4+
- MySQL 5.7+
- Composer

### Installation

1. **Clone the Repository**

    ```bash
    git clone https://github.com/Flo03/Csc350-finals.git
  
    ```

2. **Install Dependencies**

    ```bash
    composer install
    ```

3. **Set Up the Database**

    - Create a database named `CSC350`.
    - Import the `database.sql` file.

    ```sql
    CREATE DATABASE CSC350;
    USE CSC350;
    SOURCE path/to/database.sql;
    ```

4. **Configure Database Connection**

    Update the credentials in `config.php`:

    ```php
    <?php
    $servername = "localhost";
    $username = "yourusername";
    $password = "yourpassword";
    $dbname = "CSC350";
    ?>
    ```

### Home Page

Begin your culinary adventure from the home page. Explore featured recipes and navigate to various sections.

### Recipe Filters

Adjust sliders to set your preferred ranges for:

- **Carbs (g)**
- **Cook Time (mins)**
- **Protein (g)**
- **Price ($)**

Click **Find Recipes** to see your personalized results.

### Recipe Details

Click on any recipe to view:

- Ingredients
- Step-by-step instructions
- Nutritional info
- Cooking time

### Registration and Login

Sign up to save your favorite recipes. Log in to access your profile and personalized settings.


1. Fork the repo.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.




