<?php include "../Front/include/header.php"; ?>
<?php include "Admin_page_header.php"; ?>
<?php
    if(!isset($_SESSION['user_id']) or $_SESSION['user_role_id'] == 1) {
        header("Location: ../Front/login.php");
    }
    if(isset($_POST['category_submit'])){
        $admin_id = $_SESSION['user_id'];
        $category_name = $_POST['category_name'];
        $category_desc = $_POST['category_desc'];
        
        $add_category_query = "INSERT INTO note_category(category_name, category_description, created_by,  modified_by) 
        VALUES ('{$category_name}', '{$category_desc}', $admin_id, $admin_id)";
        
        $check_add_category_query = query($add_category_query);
        confirmQuery($check_add_category_query);
        redirect("Manage_Category.php");
        
    }
?>
    <!-- Admin Navigation -->
    <?php include "Admin_Navigation.php"; ?>

    <section class="add-category-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="add-category-heading-bold">
                        <p>Add Category</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="add-category-form-section">
        <div class="container">
            <form class="add-category-form" action="" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="Category Name">Category Name *</label>
                            <input type="text" name="category_name" class="form-control" id="add-category-name" placeholder="Enter category name" required>
                        </div>
                        <div class="form-group">
                            <label for="Description">Description *</label>
                            <textarea class="form-control" name="category_desc" id="category-description" rows="4" placeholder="Enter your description" required></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div id="add-category-submit-btn">
                            <button class="btn btn-gneral btn-purple" type="submit" name="category_submit">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

<!-- Footer -->
<?php include "Admin_page_footer.php"; ?>     