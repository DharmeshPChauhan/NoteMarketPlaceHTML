<?php include ("db_con.php"); ?>
<?php
    if(isset($_GET['cate_id'])){
        $cate_id_delete = $_GET['cate_id'];
        $delete_category_query = "UPDATE categories SET is_category_active = 'false' WHERE category_id = {$cate_id_delete}";
        
        $check_delete_category_query = mysqli_query($connection, $delete_category_query);
        
        if(!$check_delete_category_query){
            echo ("QUERY FAILED " . mysqli_connect_error($connection));
        }
        else{
            header("Location: ../Manage_Category.php");
        }
    }
    if(isset($_GET['type_id'])){
        $type_id_delete = $_GET['type_id'];
        $delete_type_query = "UPDATE types SET is_type_active = 'false' WHERE type_id = {$type_id_delete}";
        
        $check_delete_type_query = mysqli_query($connection, $delete_type_query);
        
        if(!$check_delete_type_query){
            echo ("QUERY FAILED " . mysqli_connect_error($connection));
        }
        else{
            header("Location: ../ManageType.php");
        }
    }
    if(isset($_GET['country_id'])){
        $country_id_delete = $_GET['country_id'];
        $delete_country_query = "UPDATE countries SET is_country_active = 'false' WHERE country_id = {$country_id_delete}";
        
        $check_delete_country_query = mysqli_query($connection, $delete_country_query);
        
        if(!$check_delete_country_query){
            echo ("QUERY FAILED " . mysqli_connect_error($connection));
        }
        else{
            header("Location: ../ManageCountry.php");
        }
    }
?>