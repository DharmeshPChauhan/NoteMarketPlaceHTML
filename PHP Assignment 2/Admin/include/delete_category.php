<?php include "../../Front/include/header.php"; ?>
<?php
    $the_user_id = $_SESSION['user_id'];

    if(isset($_GET['cate_id'])){
        
        $cate_id_delete = $_GET['cate_id'];
        $delete_category_query = "UPDATE note_category SET modified_date = now(), modified_by = $the_user_id, is_active = 0 WHERE category_id = $cate_id_delete";
        
        $check_delete_category_query = query($delete_category_query);
        confirmQuery($check_delete_category_query);
        redirect("../Manage_Category.php");
        
    }
    if(isset($_GET['type_id'])){
        
        $type_id_delete = $_GET['type_id'];
        $delete_type_query = "UPDATE note_type SET modified_date = now(), modified_by = $the_user_id, is_active = 0 WHERE type_id = $type_id_delete";
        
        $check_delete_type_query = query($delete_type_query);
        confirmQuery($check_delete_type_query);
        redirect("../ManageType.php");
        
    }
    if(isset($_GET['country_id'])){
        
        $country_id_delete = $_GET['country_id'];
        $delete_country_query = "UPDATE note_country SET modified_date = now(), modified_by = $the_user_id, is_active = 0 WHERE country_id = $country_id_delete";
        
        $check_delete_country_query = query($delete_country_query);
        confirmQuery($check_delete_country_query);
        redirect("../ManageCountry.php");
    }
?>