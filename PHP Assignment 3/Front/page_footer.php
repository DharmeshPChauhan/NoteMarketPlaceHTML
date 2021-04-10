<?php
    $select_footer_data_sql = "SELECT * FROM system_config";
    $select_footer_data_result = query($select_footer_data_sql);
    confirmQuery($select_footer_data_result);

    $results = array();
    while($row = fetch_array($select_footer_data_result)) {
        $results[$row['key']] = $row['value'];
    }
?>
  
   
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
                        <li><a href="<?php echo $results['FBICON']; ?>"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="<?php echo $results['TWITTERICON']; ?>"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="<?php echo $results['LNICON']; ?>"><i class="fa fa-linkedin"></i></a></li>
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