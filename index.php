<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>CropCart</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body>
    <!-- Navigation Bar -->
    <nav>
        <div class="nav-container">
            <div class="logo">
                <img src="logo.png" alt="CropCart Logo">
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main>
        <!-- Search Section -->
        <section class="search-section">
            <div class="search-container">
                <form method="post" class="search-box">
                    <input type="text" name="search" placeholder="Search for fresh products..." required>
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </section>

        <!-- Category Section -->
        <section class="category-section">
            <div class="category-container">
                <form method="post" action="">
                    <button type="submit" name="category" value="fruits">Fruits</button>
                    <button type="submit" name="category" value="vegetables">Vegetables</button>
                    <button type="submit" name="category" value="cereals">Cereals</button>
                    <button type="submit" name="category" value="spices">Spices</button>
                    <button type="submit" name="category" value="dairy">Dairy</button>
                </form>
            </div>
        </section>

        <!-- Content Section -->
        <section class="content-section">
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "price";

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            function levenshteinDistance($str1, $str2) {
                $len1 = strlen($str1);
                $len2 = strlen($str2);
                
                $matrix = array();
                
                for ($i = 0; $i <= $len1; $i++) {
                    $matrix[$i][0] = $i;
                }
                
                for ($j = 0; $j <= $len2; $j++) {
                    $matrix[0][$j] = $j;
                }
                
                for ($i = 1; $i <= $len1; $i++) {
                    for ($j = 1; $j <= $len2; $j++) {
                        if ($str1[$i-1] == $str2[$j-1]) {
                            $cost = 0;
                        } else {
                            $cost = 1;
                        }
                        
                        $matrix[$i][$j] = min(
                            $matrix[$i-1][$j] + 1,
                            $matrix[$i][$j-1] + 1,
                            $matrix[$i-1][$j-1] + $cost
                        );
                    }
                }
                
                return $matrix[$len1][$len2];
            }

            if(isset($_POST['search']) && !empty($_POST['search'])) {
                $search = $conn->real_escape_string($_POST['search']);
                $sql = "SELECT * FROM products_db WHERE Product_Name LIKE '%$search%'";
                $result = $conn->query($sql);

                if ($result && $result->num_rows == 0) {
                    // If no results found, look for similar products
                    $sql = "SELECT Product_Name FROM products_db";
                    $allProducts = $conn->query($sql);
                    $suggestions = array();
                    $searchTerm = strtolower($search);

                    while($row = $allProducts->fetch_assoc()) {
                        $productName = strtolower($row['Product_Name']);
                        $distance = levenshteinDistance($searchTerm, $productName);
                        
                        // If the words are similar enough (adjust threshold as needed)
                        if($distance <= 3) {
                            $suggestions[] = $row['Product_Name'];
                        }
                    }

                    if(!empty($suggestions)) {
                        echo '<div class="suggestion-box">';
                        echo '<p>Did you mean:</p>';
                        echo '<form method="post" class="suggestion-form">';
                        foreach($suggestions as $suggestion) {
                            echo '<button type="submit" name="search" value="' . $suggestion . '" class="suggestion-btn">';
                            echo $suggestion;
                            echo '</button>';
                        }
                        echo '</form>';
                        echo '</div>';
                    }
                }
                // Search functionality
                $sql = "SELECT * FROM products_db WHERE Product_Name LIKE '%$search%'";
                $result = $conn->query($sql);

                if ($result && $result->num_rows > 0) {
                    echo '<div class="products-container">';
                    while($row = $result->fetch_assoc()) {
                        // Create 5 cards for each product
                        $vendors = array(
                            array(
                                "name" => "Blinkit", 
                                "price" => $row["Final_Price_Blinkit"], 
                                "base" => $row["Base_Price_Blinkit"],
                                "logo" => "blinkit.png"
                            ),
                            array(
                                "name" => "Swiggy", 
                                "price" => $row["Final_Price_Swiggy"], 
                                "base" => $row["Base_Price_Swiggy"],
                                "logo" => "swiggy.webp"
                            ),
                            array(
                                "name" => "CropCart", 
                                "price" => $row["Final_Price_CropCart"], 
                                "base" => $row["Base_Price_CropCart"],
                                "logo" => "logo.png"
                            ),

                            array(
                                "name" => "Zepto", 
                                "price" => $row["Final_Price_Zepto"], 
                                "base" => $row["Base_Price_Zepto"],
                                "logo" => "zepto.png"
                            ),
                            array(
                                "name" => "Amazonfresh", 
                                "price" => $row["Final_Price_AmazonFresh"], 
                                "base" => $row["Base_Price_AmazonFresh"],
                                "logo" => "amazonfresh.png"
                            )
                        );

                        foreach($vendors as $vendor) {
                            echo '<div class="product-card">';
                            echo '<div class="vendor-logo">';
                            echo '<img src="' . $vendor["logo"] . '" alt="' . $vendor["name"] . ' logo">';
                            echo '</div>';
                            echo '<div class="product-image">';
                            echo '<img src="' . $row["Image_URL"] . '" alt="' . $row["Product_Name"] . '">';
                            echo '</div>';
                            echo '<div class="product-details">';
                            echo '<h3>' . $row["Product_Name"] . '</h3>';
                            echo '<div class="price-container">';
                            echo '<p class="base-price">Base Price: ₹' . $vendor["base"] . '</p>';
                            echo '<div class="final-price-container">';
                            echo '<p class="final-price">Final Price: ₹' . $vendor["price"] . '</p>';
                            echo '<div class="info-icon" data-tooltip="Including all the delivery charges, platform fee and taxes.">';
                            echo '<i class="fa fa-info-circle"></i>';
                            echo '</div>';
                            echo '</div>';
                            echo '</div>';
                            echo '</div>';
                            echo '</div>';
                        }
                    }
                    echo '</div>';
                } else {
                    echo '<div class="no-products">No products found matching your search</div>';
                }
            }
            elseif(isset($_POST['category'])) {
                // Category display logic
                if($_POST['category'] == 'fruits') {
                    $sql = "SELECT * FROM fruits_db";
                    $name_field = "Fruit_Name";
                } elseif($_POST['category'] == 'vegetables') {
                    $sql = "SELECT * FROM vegetable_db";
                    $name_field = "Vegetable_Name";
                }
                elseif($_POST['category'] == 'cereals') {
                    $sql = "SELECT * FROM cereals_db";
                    $name_field = "Cereal_Name";
                }
                elseif($_POST['category'] == 'spices') {
                    $sql = "SELECT * FROM spices";
                    $name_field = "Spices_Name";
                }
                elseif($_POST['category'] == 'dairy') {
                    $sql = "SELECT * FROM dairy_products";
                    $name_field = "DairyProduct_Name";
                }

                $result = $conn->query($sql);

                if ($result && $result->num_rows > 0) {
                    echo '<div class="products-container">';
                    while($row = $result->fetch_assoc()) {
                        echo '<div class="product-card">';
                        echo '<div class="product-image">';
                        echo '<img src="' . $row["image"] . '" alt="' . $row[$name_field] . '">';
                        echo '</div>';
                        echo '<div class="product-details">';
                        echo '<h3>' . $row[$name_field] . '</h3>';
                        echo '<p class="price">₹' . $row["Final_Price_CropCart"] . '</p>';
                        echo '</div>';
                        echo '</div>';
                    }
                    echo '</div>';
                } else {
                    echo '<div class="no-products">No products found</div>';
                }
            } else {
                // Default Welcome Message
                echo '<section class="welcome-section">';
                echo '<div class="welcome-container">';
                echo '<h1>Where Farms meet Family</h1>';
                echo '<p>Fresh produce delivered straight from local farmers to your doorstep</p>';
                echo '</div>';
                echo '</section>';
            }
            
            $conn->close();
            ?>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <p>&copy; 2024 CropCart. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
