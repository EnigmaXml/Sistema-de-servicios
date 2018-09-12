<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?=base_url()?>/assets/images/favicon.png">
    <title>Admin Press Admin Template - The Ultimate Bootstrap 4 Admin Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?=base_url()?>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url()?>/assets/plugins/wizard/steps.css" rel="stylesheet">
    <!--alerts CSS -->
    <link href="<?=base_url()?>/assets/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS Load -->
    <link rel="stylesheet" href="<?=base_url()?>/assets/plugins/dropify/dist/css/dropify.min.css">
    <link href="<?=base_url()?>/assets/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="<?=base_url()?>/assets/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border logo-center">

    <div id="main-wrapper">
       
        <div class="page-wrapper">
          
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body wizard-content">
                                <h4 class="card-title">Step wizard</h4>
                                <h6 class="card-subtitle">You can find the <a href="http://www.jquery-steps.com" target="_blank">offical website</a></h6>
                                <form action="#" class="tab-wizard wizard-circle">

                                    <!-- Step 1 -->
                                    
                                    <h6></h6>
                                    <section>
                                       
                                    </section>
                                    <!-- Step 2 -->
                                    <h6></h6>
                                    <section>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="BusinesName1"><?php echo  $this->lang->line('company_business_name');?></label>
                                                    <input type="text" class="form-control" id="BusinesName1"> 
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="NameContact"><?php echo  $this->lang->line('company_name_contac');?></label>
                                                    <input type="text" class="form-control" id="NameContact"> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="emailAddress1"><?php echo  $this->lang->line('company_address');?></label>
                                                    <input type="email" class="form-control" id="emailAddress1"> 
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="phoneNumber1"><?php echo  $this->lang->line('company_ephone');?></label>
                                                    <input type="tel" class="form-control" id="phoneNumber1"> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                  <label for="location1"><?php echo  $this->lang->line('company_email');?></label>
                                                 <input type="tel" class="form-control" id="phoneNumber1"> </
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- Step 3 -->
                                    <h6></h6>
                                    <section>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h4 class="card-title">File Upload2</h4>
                                                        <label for="input-file-now-custom-1">You can add a default value</label>
                                                        <input type="file" id="input-file-now-custom-1" class="dropify" data-default-file="<?=base_url()?>/assets/plugins/dropify/src/images/test-image-1.jpg" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- Step 4 -->
                                    <h6></h6>
                                    <section>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="card card-body printableArea">
                                                    <h3><b><?php echo  $this->lang->line('company_data');?></b> 
                                                    </h3>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="pull-left">
                                                                <address>
                                                                                <h3> &nbsp;<b class="text-danger"><?php echo  $this->lang->line('company_business_name');?></b></h3>
                                                                                 <label for="BusinesName1"><?php echo  $this->lang->line('company_business_name');?></label>

                                                                                 <h3> &nbsp;<b ><?php echo  $this->lang->line('company_address');?></b></h3>
                                                                                 <label for="BusinesName1"><?php echo  $this->lang->line('company_business_name');?></label>
                                                                                 <h3> &nbsp;<b ><?php echo  $this->lang->line('company_name_contac');?></b></h3>
                                                                                 <label for="BusinesName1"><?php echo  $this->lang->line('company_name_contac');?></label>
                                                                </address>
                                                            </div>
                                                            <div class="pull-right text-right">
                                                                <address>
                                                                 <h3> &nbsp;<b ><?php echo  $this->lang->line('company_email');?></b></h3>
                                                                     <label for="BusinesName1"><?php echo  $this->lang->line('company_email');?></label>
                                                                     <h3> &nbsp;<b ><?php echo  $this->lang->line('company_ephone');?></b></h3>
                                                                     <label for="BusinesName1"><?php echo  $this->lang->line('company_ephone');?></label>
                                                                </address>
                                                            </div>

                                                             
                                                            <div class="pull-right text-right">
                                                                <address>
                                                                 <link rel="icon" type="image/png" sizes="16x16" href="<?=base_url()?>/assets/images/favicon.png">
                                                                </address>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </section>
                                </form>
                          
                            </div>
                        </div>
                  
                    </div>
                </div>
                <!-- Validation wizard -->
              
                <!-- vertical wizard -->
             
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
           
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer"> © 2017 Admin Press Admin by themedesigner.in </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div> 
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<?=base_url()?>/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?=base_url()?>/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="<?=base_url()?>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<?=base_url()?>/assets/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->

    <!--Menu sidebar -->
    <script src="<?=base_url()?>/assets/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="<?=base_url()?>/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="<?=base_url()?>/assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="<?=base_url()?>/assets/js/custom.min.js"></script>
    <script src="<?=base_url()?>/assets/plugins/moment/min/moment.min.js"></script>
    <script src="<?=base_url()?>/assets/plugins/wizard/jquery.steps.min.js"></script>
    <script src="<?=base_url()?>/assets/plugins/wizard/jquery.validate.min.js"></script>
    <!-- Sweet-Alert  -->
    <script src="<?=base_url()?>/assets/plugins/sweetalert/sweetalert.min.js"></script>
    <script src="<?=base_url()?>/assets/plugins/wizard/steps.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="<?=base_url()?>/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>

    <!-- ============================================================== -->
    <!-- Plugins for this page -->
    <!-- ============================================================== -->
    <!-- jQuery file upload -->
    <script src="<?=base_url()?>/assets/plugins/dropify/dist/js/dropify.min.js"></script>
    <script>
    $(document).ready(function() {
        // Basic
        $('.dropify').dropify();

        // Translated
        $('.dropify-fr').dropify({
            messages: {
                default: 'Glissez-déposez un fichier ici ou cliquez',
                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                remove: 'Supprimer',
                error: 'Désolé, le fichier trop volumineux'
            }
        });

        // Used events
        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {
            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
        });

        drEvent.on('dropify.afterClear', function(event, element) {
            alert('File deleted');
        });

        drEvent.on('dropify.errors', function(event, element) {
            console.log('Has Errors');
        });

        var drDestroy = $('#input-file-to-destroy').dropify();
        drDestroy = drDestroy.data('dropify')
        $('#toggleDropify').on('click', function(e) {
            e.preventDefault();
            if (drDestroy.isDropified()) {
                drDestroy.destroy();
            } else {
                drDestroy.init();
            }
        })
    });
    </script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="<?=base_url()?>/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>