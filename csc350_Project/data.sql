CREATE TABLE Admin (
                       AdminID INT AUTO_INCREMENT PRIMARY KEY,
                       FirstName VARCHAR(50) NOT NULL,
                       Email VARCHAR(50) UNIQUE NOT NULL,
                       Password VARCHAR(255) NOT NULL
);


INSERT INTO Admin ( FirstName, Email, Password)
VALUES
    ( 'Florian', 'florian@gmail.com', 'Flo'),
    ( 'Meme', 'meme@gmail.com', 'Me'),
    ( 'Ksenia', 'ksenia@gmail.com', 'Ksen'),
    ('Halil', 'halil@gmail.com', 'Hal');


CREATE TABLE Meals (
                       MealID INT PRIMARY KEY,
                       MealName VARCHAR(50),
                       MealPrice DECIMAL(5,2),
                       MealDescription VARCHAR(100),
                       MealImage VARCHAR(100),
                       MealRecipe VARCHAR(100),
                       ProteinCount DECIMAL(5,2),
                       CaloriesCount DECIMAL(5,2),
                       CarbsCount DECIMAL(5,2),
                       CookTime DECIMAL(5,2)
);


INSERT INTO Meals (MealID, MealName, MealPrice, MealDescription, MealImage, MealRecipe, ProteinCount, CaloriesCount, CarbsCount, CookTime)
VALUES
    (1, 'Chicken Alfredo Pasta', 6.00, 'Creamy Alfredo pasta with grilled chicken', 'https://www.budgetbytes.com/wp-content/uploads/2022/07/Chicken-Alfredo-above-500x500.jpg', 'https://www.budgetbytes.com/chicken-alfredo/', 25.00, 600.00, 50.00, 30.00),
    (2, 'Beef Stir Fry', 5.00, 'Beef stir-fried with vegetables in a savory sauce', 'https://www.twopeasandtheirpod.com/wp-content/uploads/2020/03/Beef-Stir-Fry-6.jpg', 'https://www.twopeasandtheirpod.com/beef-stir-fry/', 30.00, 450.00, 40.00, 25.00),
    (3, 'Stuffed Bell Peppers', 4.50, 'Bell peppers stuffed with rice, meat, and cheese', 'https://www.budgetbytes.com/wp-content/uploads/2023/08/Stuffed-Bell-Peppers-V2.jpg', 'https://www.budgetbytes.com/stuffed-bell-peppers/', 20.00, 350.00, 45.00, 40.00),
    (4, 'Shrimp Tacos', 5.50, 'Spicy shrimp tacos with avocado and lime', 'https://pinchofyum.com/wp-content/uploads/Shrimp-Tacos-with-Slaw.jpg', 'https://pinchofyum.com/spicy-shrimp-tacos-with-garlic-cilantro-lime-slaw', 18.00, 300.00, 35.00, 20.00),
    (5, 'Lentil Soup', 3.00, 'Hearty lentil soup with vegetables', 'https://sweetpeasandsaffron.com/wp-content/uploads/2019/11/lentil-soup-5.jpg', 'https://sweetpeasandsaffron.com/greek-lentil-soup/', 15.00, 250.00, 40.00, 35.00),
    (6, 'Quinoa Salad', 4.00, 'Quinoa salad with chickpeas, feta, and a lemon vinaigrette', 'https://madaboutfood.co/wp-content/uploads/2021/08/Quinoa-Chickpea-Salad-6-1536x2048.jpg', 'https://madaboutfood.co/quinoa-chickpea-salad/', 12.00, 300.00, 45.00, 20.00),
    (7, 'Baked Salmon', 7.00, 'Baked salmon with a honey mustard glaze', 'https://www.themediterraneandish.com/wp-content/uploads/2020/06/Honey-Mustard-Salmon-Recipe-5.jpg', 'https://www.themediterraneandish.com/honey-mustard-salmon-recipe/', 35.00, 400.00, 5.00, 25.00),
    (8, 'Vegetarian Chili', 4.00, 'Spicy vegetarian chili with beans and corn', 'https://www.goya.com/media/7686/three-bean-vegetarian-chili.png?quality=80', 'https://www.thespruceeats.com/black-bean-corn-vegetarian-chili-recipe-3378408', 18.00, 350.00, 50.00, 30.00),
    (9, 'Greek Yogurt Parfait', 3.50, 'Layers of Greek yogurt, granola, and fresh berries', 'https://feelgoodfoodie.net/wp-content/uploads/2021/05/fruit-and-yogurt-parfait-08.jpg', 'https://feelgoodfoodie.net/recipe/fruit-yogurt-parfait/', 10.00, 200.00, 30.00, 5.00),
    (10, 'Chicken Caesar Salad', 5.00, 'Grilled chicken on a bed of romaine lettuce with Caesar dressing', 'https://www.recipetineats.com/wp-content/uploads/2016/05/Caesar-Salad_7.jpg', 'https://www.recipetineats.com/chicken-caesar-salad/', 30.00, 350.00, 15.00, 15.00),
    (11, 'BBQ Pulled Pork Sandwich', 6.00, 'Pulled pork in BBQ sauce on a bun', 'https://www.melskitchencafe.com/wp-content/uploads/2010/08/bbq-pork-sandwich4.jpg', 'https://www.melskitchencafe.com/bbq-pulled-pork-sandwiches-slow-cooker/', 25.00, 500.00, 40.00, 35.00),
    (12, 'Falafel Wrap', 4.50, 'Falafel with hummus and veggies in a wrap', 'https://www.alphafoodie.com/wp-content/uploads/2024/04/Authentic-Falafel-Main-1.jpeg', 'https://www.alphafoodie.com/homemade-easy-falafel-wrap/', 15.00, 300.00, 40.00, 20.00),
    (13, 'Mushroom Risotto', 5.00, 'Creamy mushroom risotto with Parmesan cheese', 'https://boldappetite.com/wp-content/uploads/2022/02/Food-9342.webp', 'https://boldappetite.com/parmesan-mushroom-risotto/', 10.00, 400.00, 60.00, 30.00),
    (14, 'Teriyaki Chicken Bowl', 6.00, 'Teriyaki chicken with rice and steamed vegetables', 'https://www.wholesomeyum.com/wp-content/uploads/2023/05/wholesomeyum-Teriyaki-Chicken-Bowl-5.jpg', 'https://www.thereciperebel.com/one-pot-teriyaki-chicken-rice-and-vegetables/', 25.00, 450.00, 50.00, 25.00),
    (15, 'Turkey Meatballs', 5.00, 'Turkey meatballs in marinara sauce', 'https://www.onceuponachef.com/images/2022/01/turkey-meatballs-marinara-sauce.jpg', 'https://www.onceuponachef.com/recipes/turkey-meatballs-in-marinara-sauce.html', 28.00, 350.00, 20.00, 30.00);
