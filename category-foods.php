    
    <?php include('partials-front/menu.php'); ?>

    <?php 
        //Check whether id is passed or not
        if(isset($_GET['product_id']))
        {
            //Category id is set and get the id
            $product_id = $_GET['product_id'];
            // Get the Category Title Based on Category ID
            $sql = "SELECT title FROM Products WHERE id=$product_id";

            //Execute the Query
            $res = mysqli_query($conn, $sql);

            //Get the value from Database
            $row = mysqli_fetch_assoc($res);
            //Get the Name
            $category_title = $row['title'];
        }
        else
        {
            //Category not passed
            //Redirect to Home page
            header('location:'.SITEURL);
        }
    ?>


    <!-- Food Search Section Starts Here -->
    <section class="food-search text-center">
        <div class="container">
            
            <h2><a href="#" class="text-white">Items on "<?php echo $category_title; ?>"</a></h2>

        </div>
    </section>
    <!-- Food Search Section Ends Here -->



    <!-- fOOD MEnu Section Starts Here -->
    <section class="food-menu">
        <div class="container">
            <h2 class="text-center">Bakery Menu</h2>

            <?php 
            
                //Create SQL Query to Get foods based on Selected Category
                $sql2 = "SELECT * FROM Flavors WHERE product_id=$product_id";

                //Execute the Query
                $res2 = mysqli_query($conn, $sql2);

                //Count the Rows
                $count2 = mysqli_num_rows($res2);

                //CHeck whether food is available or not
                if($count2>0)
                {
                    //Food is Available
                    while($row2=mysqli_fetch_assoc($res2))
                    {
                        $id = $row2['id'];
                        $title = $row2['title'];
                        $price = $row2['price'];
                        $image_name = $row2['image_name'];
                        ?>
                        
                        <div class="food-menu-box">
                            <div class="food-menu-img">
                                <?php 
                                    if($image_name=="")
                                    {
                                        //Image not Available
                                        echo "<div class='error'>Image not Available.</div>";
                                    }
                                    else
                                    {
                                        //Image Available
                                        ?>
                                        <img src="<?php echo SITEURL; ?>proj_images/<?php echo $image_name; ?>" alt="Bake" class="img-responsive img-curve">
                                        <?php
                                    }
                                ?>
                                
                            </div>

                            <div class="food-menu-desc">
                                <h4><?php echo $title; ?></h4>
                                <p class="food-price">Rs.<?php echo $price; ?></p>
                                <br>

                                <a href="<?php echo SITEURL; ?>order.php?food_id=<?php echo $id; ?>" class="btn btn-primary">Order Now</a>
                            </div>
                        </div>

                        <?php
                    }
                }
                else
                {
                    //Food not available
                    echo "<div class='error'>Food not Available.</div>";
                }
            
            ?>

            

            <div class="clearfix"></div>

            

        </div>

    </section>
    <!-- fOOD Menu Section Ends Here -->

    <?php include('partials-front/footer.php'); ?>