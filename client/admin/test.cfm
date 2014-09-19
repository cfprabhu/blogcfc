<cfoutput>
    <html>
    <head>
        <title></title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="#application.rooturl#/includes/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="#application.rooturl#/includes/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="#application.rooturl#/includes/ionicons.min.css" rel="stylesheet" type="text/css" />
         <!-- Theme style -->
        <link href="#application.rooturl#/includes/AdminLTE.css" rel="stylesheet" type="text/css" />
    </head>
</cfoutput>    
    <body class="skin-blue">
            
            <div class="wrapper row-offcanvas row-offcanvas-left">
                <!-- Left side column. contains the logo and sidebar -->
                <aside class="left-side sidebar-offcanvas">
                    <!-- sidebar: style can be found in sidebar.less -->
                    <section class="sidebar">
                        <!-- sidebar menu: : style can be found in sidebar.less -->
                        <ul class="sidebar-menu">
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-folder"></i> <span>Examples</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="pages/examples/invoice.html"><i class="fa fa-angle-double-right"></i> Invoice</a></li>
                                    <li><a href="pages/examples/login.html"><i class="fa fa-angle-double-right"></i> Login</a></li>
                                    <li><a href="pages/examples/register.html"><i class="fa fa-angle-double-right"></i> Register</a></li>
                                    <li><a href="pages/examples/lockscreen.html"><i class="fa fa-angle-double-right"></i> Lockscreen</a></li>
                                    <li><a href="pages/examples/404.html"><i class="fa fa-angle-double-right"></i> 404 Error</a></li>
                                    <li><a href="pages/examples/500.html"><i class="fa fa-angle-double-right"></i> 500 Error</a></li>
                                    <li><a href="pages/examples/blank.html"><i class="fa fa-angle-double-right"></i> Blank Page</a></li>
                                </ul>
                            </li>
                        </ul>
                    </section>
                    <!-- /.sidebar -->
                </aside>
            </div><!-- ./wrapper -->
<cfoutput>
            <!-- jQuery 2.0.2 -->
            <script src="#application.rooturl#/includes/jquery.js" type="text/javascript"></script>
            <!-- jQuery UI 1.10.3 -->
            <script src="#application.rooturl#/includes/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
            <!-- Bootstrap -->
            <script src="#application.rooturl#/includes/bootstrap.min.js" type="text/javascript"></script>
            <!-- AdminLTE App -->
            <script src="#application.rooturl#/includes/app.js" type="text/javascript"></script>
</cfoutput>
        </body>
    </html>
