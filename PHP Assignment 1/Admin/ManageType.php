<?php include ("include/db_con.php"); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">

    <!-- Title -->
    <title>Manage Type - Notes Marketplace</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- Fontawesome -->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">

    <!-- Costom CSS-->
    <link rel="stylesheet" href="css/style.css">

    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive-admin.css">

</head>

<body>

    <nav class="navbar fixed-top navbar-expand-lg navbar-light" id="mynav">
        <div class="container">
            <a class="navbar-brand" href="Dashboard-admin.html"><img src="images/Homepage/logo.png" alt="logo" class="img-responsive"></a>
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
                        <a class="nav-link" href="#" role="button" id="userdropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/user-img/user-img.png" alt="User Image" class="img-responsive rounded-circle" id="nav-user-img"></a>

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
    </nav>>

    <section id="manage-type-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="manage-type-heading">
                        <p>Manage Type</p>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="add-type-btn" id="add-type">
                                <a class="btn btn-general btn-purple" href="AddType.php" title="Add Type" role="button">Add Type</a>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <div class="manage-type-search">
                               <form>
                                    <div class="row">

                                        <div class="col-sm-6 col-md-6 offset-md-3">
                                            <input type="text" class="form-control" id="type-search" placeholder="Search">
                                        </div>
                                        <div class="col-sm-6 col-md-3">
                                            <div class="type-search-btn" id="search-type-btn">
                                                <a class="btn btn-general btn-purple" href="#" title="Search" role="button">Search</a>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="type-info">
        <div class="container">
            <div class="row">
                <div class="col-md-12 table-responsive">
                    <table class="table table-hover" id="type-info-table">
                        <thead>
                            <tr>
                                <th scope="col">Sr no.</th>
                                <th scope="col">Type</th>
                                <th scope="col">Description</th>
                                <th scope="col">Date Added</th>
                                <th scope="col">Added By</th>
                                <th scope="col">Active</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $select_type_query = "SELECT * FROM types ORDER BY type_date_added DESC";
                                $check_select_type_query = mysqli_query($connection, $select_type_query);

                                if(!$check_select_type_query){
                                    echo ("QUERY FAILED " . mysqli_connect_error($connection));
                                }
                                $sr_no = 1;
                                $active = "Yes";
                                while($row = mysqli_fetch_assoc($check_select_type_query)){
                                    $type_id = $row['type_id'];
                                    $type_name = $row['type_name'];
                                    $type_description = $row['type_description'];
                                    $is_type_active = $row['is_type_active'];
                                    $type_date_added = $row['type_date_added'];
                                    $type_added_by_user = $row['type_added_by_user'];
                                    $type_date_edited = $row['type_date_edited'];
                                    $type_edited_by_user = $row['type_edited_by_user'];
                                    if ($is_type_active === 'true'){
                                        $active = "Yes";
                                    }
                                    else{
                                        $active = "No";
                                    }
                                    $date = new DateTime($type_date_added);

                                    $date = $date->format('d-m-Y H:i');
                                    echo "<tr>
                                            <td>{$sr_no}</td>
                                            <td>{$type_name}</td>
                                            <td>{$type_description}</td>
                                            <td>{$date}</td>
                                            <td>{$type_added_by_user}</td>
                                            <td>{$active}</td>
                                            <td>
                                                <div class='action-img'>
                                                    <div class='edit-type'>
                                                        <a href='include/edit_type.php?type_id={$type_id}'><img src='images/Dashboard/edit.png' alt='Edit' class='img-risponsive'></a>
                                                    </div>
                                                    <div class='delete-type-action'>
                                                        <a href='include/delete_category.php?type_id={$type_id}'><img src='images/Dashboard/delete.png' alt='Delete' class='img-risponsive'></a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>";
                                    
                                    $sr_no += 1;
                                }
                            ?>
                        
                        
                        
                        
                        
                        
<!--
                            <tr>
                                <td>1</td>
                                <td>Val 1</td>
                                <td>Lorem ipsum dolor sit amet</td>
                                <td>04-01-2021, 12:10</td>
                                <td>Khyati Patel</td>
                                <td>Yes</td>
                                <td>
                                    <div class="action-img">
                                        <div class="edit-type">
                                            <a href="#"><img src="images/Dashboard/edit.png" alt="Edit" class="img-risponsive"></a>
                                        </div>
                                        <div class="delete-type-action">
                                            <a href="#"><img src="images/Dashboard/delete.png" alt="Delete" class="img-risponsive"></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Val 2</td>
                                <td>Lorem ipsum dolor sit amet</td>
                                <td>04-01-2021, 12:10</td>
                                <td>Khyati Patel</td>
                                <td>Yes</td>
                                <td>
                                    <div class="action-img">
                                        <div class="edit-type">
                                            <a href="#"><img src="images/Dashboard/edit.png" alt="Edit" class="img-risponsive"></a>
                                        </div>
                                        <div class="delete-type-action">
                                            <a href="#"><img src="images/Dashboard/delete.png" alt="Delete" class="img-risponsive"></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Val 3</td>
                                <td>Lorem ipsum dolor sit amet</td>
                                <td>04-01-2021, 12:10</td>
                                <td>Khyati Patel</td>
                                <td>No</td>
                                <td>
                                    <div class="action-img">
                                        <div class="edit-type">
                                            <a href="#"><img src="images/Dashboard/edit.png" alt="Edit" class="img-risponsive"></a>
                                        </div>
                                        <div class="delete-type-action">
                                            <a href="#"><img src="images/Dashboard/delete.png" alt="Delete" class="img-risponsive"></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Val 4</td>
                                <td>Lorem ipsum dolor sit amet</td>
                                <td>04-01-2021, 12:10</td>
                                <td>Ramesh Patel</td>
                                <td>Yes</td>
                                <td>
                                    <div class="action-img">
                                        <div class="edit-type">
                                            <a href="#"><img src="images/Dashboard/edit.png" alt="Edit" class="img-risponsive"></a>
                                        </div>
                                        <div class="delete-type-action">
                                            <a href="#"><img src="images/Dashboard/delete.png" alt="Delete" class="img-risponsive"></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Val 5</td>
                                <td>Lorem ipsum dolor sit amet</td>
                                <td>04-01-2021, 12:10</td>
                                <td>Ram Patel</td>
                                <td>No</td>
                                <td>
                                    <div class="action-img">
                                        <div class="edit-type">
                                            <a href="#"><img src="images/Dashboard/edit.png" alt="Edit" class="img-risponsive"></a>
                                        </div>
                                        <div class="delete-type-action">
                                            <a href="#"><img src="images/Dashboard/delete.png" alt="Delete" class="img-risponsive"></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
-->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <section id="dash-pagination">
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link active" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                    </a>
                </li>
            </ul>
        </nav>
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
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap JS-->
    <script src="js/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- Custom JS -->
    <script src="js/script.js"></script>

</body>

</html>