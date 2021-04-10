<?php include "../Front/include/header.php"; ?>
<?php include "Admin_page_header.php"; ?>
<?php
    if(!isset($_SESSION['user_id']) or $_SESSION['user_role_id'] == 1) {
        header("Location: ../Front/login.php");
    }
    if(isset($_POST['type_submit'])){
        
        $admin_id = $_SESSION['user_id'];
        $type_name = $_POST['type_name'];
        $type_desc = $_POST['type_desc'];
        
        $add_type_query = "INSERT INTO note_type(type_name, type_description, created_by, modified_by) VALUES ('{$type_name}', '{$type_desc}', $admin_id, $admin_id)";
        
        $check_add_type_query = query($add_type_query);
        confirmQuery($check_add_type_query);
        redirect("ManageType.php");
        
    }
?>
    <!-- Admin Navigation -->
    <?php include "Admin_Navigation.php"; ?>

    <section class="add-type-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="add-type-heading-bold">
                        <p>Add Type</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="add-type-form-section">
        <div class="container">
            <form class="add-type-form" action="" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="Type">Type *</label>
                            <input type="text" name="type_name" class="form-control" id="add-type-name" placeholder="Enter Type" required>
                        </div>
                        <div class="form-group">
                            <label for="Description">Description *</label>
                            <textarea name="type_desc" class="form-control" id="type-description" rows="4" placeholder="Enter your description" required></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div id="add-type-submit-btn">
                            <button type="submit" name="type_submit" class="btn btn-gneral btn-purple">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
<!-- Footer -->
<?php include "Admin_page_footer.php"; ?> 
