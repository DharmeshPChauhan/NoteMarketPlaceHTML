<?php  include "include/header.php"; ?>
<?php include("page_header.php"); ?>
<?php
    if(!isset($_SESSION['user_id'])) {
        redirect('login.php');
    }
    if(isset($_GET['download_rejected_note'])) {
        if(isset($_SESSION['user_id'])) {
            $path = $_GET['download_rejected_note'];
            download_attachment($path);
        }
    }

?>

    <!-- Navigation Bar -->
    <?php include("Navigation.php"); ?>

    <section id="myrejected-notes">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <div class="myrejectednote-head">
                        <p>My Rejected Notes</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 text-right">
                    <div class="myrejectednote-search">
                        <input type="text" class="form-control" id="search-rejected-note" placeholder="Search">
                        <div class="myrejectednote-search-btn" id="myrejectednote-btn">
                            <a class="btn btn-general btn-purple" id="rejected_note_search_btn" title="Search" role="button">Search</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div id="rejected_data_result"></div>

<?php include("page_footer.php"); ?>


<script> 
$(document).ready(function() {
    
    get_rejected_note_data();    

    function get_rejected_note_data(page)
    {
        var rejected_note = 'fetch_rejected_data';
        var search_rejected = $('#search-rejected-note').val();

        $.ajax({
            url:"fetch_buyerrequest_ajax.php",
            method:"POST",
            data:{rejected_note:rejected_note,search_rejected:search_rejected,page_no:page},
            success:function(data){
                $('#rejected_data_result').html(data);
            }
        });
    }
    
    $('#rejected_note_search_btn').click(function(){
        get_rejected_note_data()
    });
    
    $(document).on("click", "#rejected_notes_pagination li a", function(e){
      e.preventDefault();
      var pageId = $(this).attr("id");
        if(pageId == 'rejected_notes_prev') {
            var current_page = $('#rejected_notes_pagination li a.active').attr("id");
            pageId = parseInt(current_page) - 1;
            if(pageId == 0){
                get_rejected_note_data(1);
            }
            else {
                get_rejected_note_data(pageId);
            }
            
        }
        else if(pageId == 'rejected_notes_next') {
            var current_page = $('#rejected_notes_pagination li a.active').attr("id");
            var check_last = $('#rejected_notes_next').parent().prev().children('a').attr("id");
            if(current_page == check_last) {
                get_rejected_note_data(current_page);
            }
            else {
                page_next = parseInt(current_page) + 1;
                get_rejected_note_data(page_next);
            }
            
        }
        else {
            get_rejected_note_data(pageId);
        }
      
    });
});
</script>