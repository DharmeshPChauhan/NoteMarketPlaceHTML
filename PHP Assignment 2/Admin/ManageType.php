<?php include "../Front/include/header.php"; ?>
<?php include "Admin_page_header.php"; ?>
<?php
    if(!isset($_SESSION['user_id']) or $_SESSION['user_role_id'] == 1) {
        header("Location: ../Front/login.php");
    }
?>
    <!-- Admin Navigation -->
    <?php include "Admin_Navigation.php"; ?> 

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
                                $select_type_query = "SELECT note_type.type_id, note_type.type_name, note_type.type_description,note_type.created_date, note_type.is_active, users.user_first_name,users.user_last_name FROM note_type JOIN users ON note_type.created_by=users.user_id ORDER BY note_type.created_date DESC";
                                $check_select_type_query = query($select_type_query);
                                confirmQuery($check_select_type_query);
                                $sr_no = 1;
                                $active = "Yes";
                                while($row = fetch_array($check_select_type_query)){
                                    $type_id = $row['type_id'];
                                    $type_name = $row['type_name'];
                                    $type_description = $row['type_description'];
                                    $is_type_active = $row['is_active'];
                                    $type_date_added = $row['created_date'];
                                    $type_added_by_user = $row['user_first_name']." ".$row['user_last_name'];
                                    if ($is_type_active == 1){
                                        $active = "Yes";
                                    }
                                    else{
                                        $active = "No";
                                    }
                                    $date = new DateTime($type_date_added);

                                    $date = $date->format('d-m-Y, H:i');
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
                                                        <a href='Edit_Type.php?type_id={$type_id}'><img src='images/Dashboard/edit.png' alt='Edit' class='img-risponsive'></a>
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

<!-- Footer -->
<?php include "Admin_page_footer.php"; ?>       