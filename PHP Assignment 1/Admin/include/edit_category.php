<?php include ("db_con.php"); ?>

<?php
    if(isset($_GET['cate_id'])){
        $cate_id_edit = $_GET['cate_id'];
        $select_category_query = "SELECT * FROM categories WHERE category_id = {$cate_id_edit}";
        $check_select_category_query = mysqli_query($connection, $select_category_query);
        
        if(!$check_select_category_query){
            echo ("QUERY FAILED " . mysqli_connect_error($connection));
        }
        if(isset($_POST['category_update'])){
            $category_name = $_POST['category_name'];
            $category_desc = $_POST['category_desc'];
            $edit_category_query = "UPDATE categories SET category_name = '{$category_name}', category_description = '{$category_desc}', is_category_active = 'true', category_date_edited = now() WHERE category_id = {$cate_id_edit}";

            $check_edit_category_query = mysqli_query($connection, $edit_category_query);

            if(!$check_edit_category_query){
                echo ("QUERY FAILED " . mysqli_connect_error($connection));
            }
            else{
                header("Location: ../Manage_Category.php");
            }
        } 
        while($row = mysqli_fetch_assoc($check_select_category_query)){
            $category_id = $row['category_id'];
            $category_name = $row['category_name'];
            $category_description = $row['category_description'];
        ?>
        
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">

    <!-- Title -->
    <title>Add Category - Notes Marketplace</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- Fontawesome -->
    <link rel="stylesheet" href="../css/font-awesome/css/font-awesome.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">

    <!-- Costom CSS-->
    <link rel="stylesheet" href="../css/style.css">

    <!-- Responsive css -->
    <link rel="stylesheet" href="../css/responsive-admin.css">

</head>

<body>

    <nav class="navbar fixed-top navbar-expand-lg navbar-light" id="mynav">
        <div class="container">
            <a class="navbar-brand" href="Dashboard-admin.html"><img src="../images/Homepage/logo.png" alt="logo" class="img-responsive"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarmenu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarmenu">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="Dashboard-admin.html">Dashboard</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" id="notesdropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Notes</a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="NotesUnderReview.html">Notes Under Review</a>
                            <a class="dropdown-item" href="PublishedNotes.html">Published Notes</a>
                            <a class="dropdown-item" href="DownloadedNotes.html">Downloaded Notes</a>
                            <a class="dropdown-item" href="RejectedNotes.html">Rejected Notes</a>
                        </div>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Members.html">Members</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" id="reportsdropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Reports</a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="SpamReports.html">Spam Reports</a>
                        </div>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" id="settingsdropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Settings</a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="ManageSystemConfiguration.html">Manage System Configuration</a>
                            <a class="dropdown-item" href="ManageAdministrator.html">Manage Administrator</a>
                            <a class="dropdown-item" href="Manage%20Category.html">Manage Category</a>
                            <a class="dropdown-item" href="ManageType.html">Manage Type</a>
                            <a class="dropdown-item" href="ManageCountry.html">Manage Countries</a>
                        </div>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" id="userdropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../images/user-img/user-img.png" alt="User Image" class="img-responsive rounded-circle" id="nav-user-img"></a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="myprofile.html">Update Profile</a>
                            <a class="dropdown-item" href="#">Change Password</a>
                            <a class="dropdown-item" href="login-admin.html" id="user-logout">Logout</a>
                        </div>

                    </li>
                    <li class="nav-item">
                        <div class="login-btn">
                            <a class="nav-link btn btn-general btn-purple" href="login-admin.html" id="home-login-btn" role="button">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="add-category-heading">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="add-category-heading-bold">
                        <p>Edit Category</p>
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
                            <input type="text" name="category_name" class="form-control" id="add-category-name" placeholder="Enter category name" value="<?php echo $category_name; }} ?>" required>
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
                            <button class="btn btn-gneral btn-purple" type="submit" name="category_update">Update</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <footer>
        <hr>
        <div class="container">
            <div class="row" id="footer-content">
                <div class="col-xs-7 col-sm-7 col-md-6">
                    <div class="footer-line">
                        <p>Copyright &copy; Tatvasoft All rights reserved.</p>
                    </div>
                </div>
                <div class="col-xs-5 col-sm-5 col-md-6 text-right">
                    <ul class="social-list">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../js/jquery.min.js"></script>

    <!-- Bootstrap JS-->
    <script src="../js/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Custom JS -->
    <script src="../js/script.js"></script>

</body>

</html>