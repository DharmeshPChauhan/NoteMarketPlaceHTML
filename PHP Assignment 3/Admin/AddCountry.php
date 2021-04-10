<?php include "../Front/include/header.php"; ?>
<?php include "Admin_page_header.php"; ?>
<?php
    if(!isset($_SESSION['user_id']) or $_SESSION['user_role_id'] == 1) {
        header("Location: ../Front/login.php");
    }
    if(isset($_POST['country_submit'])){
        
        $admin_id = $_SESSION['user_id'];
        $country_name = $_POST['country_name'];
        $country_code = $_POST['country_code'];
        
        $add_country_query = "INSERT INTO note_country(country_name, country_code, created_by, modified_by) VALUES ('{$country_name}', '{$country_code}', $admin_id, $admin_id);";
        
        $check_add_country_query = query($add_country_query);
        confirmQuery($check_add_country_query);
        redirect("ManageCountry.php");
        
    }
?>
    <!-- Admin Navigation -->
    <?php include "Admin_Navigation.php"; ?>
    
    <section class="add-country-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="add-country-heading-bold">
                        <p>Add Country</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="add-country-form-section">
        <div class="container">
            <form class="add-country-form" action="" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="Country Name">Country Name *</label>
                            <input type="text" name="country_name" class="form-control" id="add-country-name" placeholder="Enter country name" required>
                        </div>
                        <div class="form-group">
                            <label for="Country Code">Country Code *</label>
                            <input type="text" name="country_code" class="form-control" id="add-country-code" placeholder="Enter country code" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div id="add-country-submit-btn">
                            <button type="submit" name="country_submit" class="btn btn-gneral btn-purple">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
<!-- Footer -->
<?php include "Admin_page_footer.php"; ?> 