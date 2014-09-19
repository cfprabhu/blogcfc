<cfsetting enablecfoutputonly=true>
<cfprocessingdirective pageencoding="utf-8">
			 
 
<cfparam name="attributes.title" default="">

<cfif thisTag.executionMode is "start">

<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<!--<link rel="stylesheet" type="text/css" href="#application.rooturl#/includes/admin.css" media="screen" />
<script type="text/javascript" src="#application.rooturl#/includes/jquery.min.js"></script>
<script type="text/javascript" src="#application.rooturl#/includes/jquery.selectboxes.js"></script>
<script type="text/javascript" src="#application.rooturl#/includes/jquery.autogrow.js"></script>
<link type="text/css" href="#application.rooturl#/includes/jqueryui/css/custom-theme/jquery-ui-1.7.2.custom.css" rel="stylesheet" />

<style type="text/css" media="screen">
  @import "#application.rooturl#/includes/uni-form/css/uni-form.css";
</style>
<script type="text/javascript" src="#application.rooturl#/includes/uni-form/js/uni-form.jquery.js"></script>

<script type="text/javascript" src="#application.rooturl#/includes/jqueryui/jqueryui.js"></script>-->
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="#application.rooturl#/includes/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="#application.rooturl#/includes/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="#application.rooturl#/includes/ionicons.min.css" rel="stylesheet" type="text/css" />
 <!-- Theme style -->
<link href="#application.rooturl#/includes/AdminLTE.css" rel="stylesheet" type="text/css" />

<!-- jQuery 2.0.2 -->
<script src="#application.rooturl#/includes/jquery.js" type="text/javascript"></script>
<!-- jQuery UI 1.10.3 -->
<script src="#application.rooturl#/includes/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
<!-- Bootstrap -->
<script src="#application.rooturl#/includes/bootstrap.min.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="#application.rooturl#/includes/app.js" type="text/javascript"></script>
<script src="#application.rooturl#/includes/jquery.validate-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
 $(function() {
    $('input:checkbox').css('opacity','1');
 });
</script>

<cfif NOT caller.isLoggedIn()>
  <style type="text/css">
    body{background:none;}
  </style>
</cfif>
<title>BlogCFC Administrator #htmlEditFormat(application.blog.getProperty("blogTitle"))#: #attributes.title#</title>
</head>
<cfif attributes.title EQ "Logon">
 	<cfset Color = "bg-black">
<cfelse>
	<cfset Color = "skin-blue">	
</cfif>	
<body class="#color#">

<!--- TODO: Switch to request scope --->
<cfif caller.isLoggedIn()>
	
	<header class="header">
            <a href="index.html" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                BlogCFC
            </a>
             <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="##" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="dropdown user user-menu">
                            <a href="##" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span>#session.name# <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header bg-light-blue">
                                    <img src="" class="img-circle" alt="User Image" />
                                    <p>
                                        #session.name#
                                        <small>MitrahSoft</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="col-xs-12 text-center">
                                        <a href="updatepassword.cfm"></i> Update Password</a>
                                    </div>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-right">
                                        <a href="index.cfm?logout=youbetterbelieveit" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
    </header>        
	<div class="wrapper row-offcanvas row-offcanvas-left">
                <!-- Left side column. contains the logo and sidebar -->
                <aside class="left-side sidebar-offcanvas">
                    <!-- sidebar: style can be found in sidebar.less -->
                    <section class="sidebar">
                        <!-- sidebar menu: : style can be found in sidebar.less -->
                        <ul class="sidebar-menu">
                        	<li><a href="index.cfm"><i class="fa fa-home"></i>Home</a></li>
                        	<cfif application.blog.isBlogAuthorized('ManageCategories')>
						       <li><a href="categories.cfm"><i class="fa fa-th"></i>Categories</a></li>
							</cfif>
                        	<li class="treeview">
                                <a href="##">
                                    <i class="fa fa-folder"></i> <span>Posts</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="entry.cfm?id=0"><i class="fa fa-angle-double-right"></i> Add Post</a></li>
                                    <li><a href="entries.cfm"><i class="fa fa-angle-double-right"></i> Entries</a></li>
                                </ul>
                            </li>
                            <li class="treeview">
                                <a href="##">
                                    <i class="fa fa-book"></i> <span>Blog</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                	<li><a href="comments.cfm"><i class="fa fa-angle-double-right"></i> Comments</a></li>
									<cfif application.commentmoderation>
										<li><a href="moderate.cfm"><i class="fa fa-angle-double-right"></i> Moderate Comments (<cfoutput>#application.blog.getNumberUnmoderated()#</cfoutput>)</a></li>
									</cfif>
                                    <li><a href="../"><i class="fa fa-angle-double-right"></i> Your Blog</a></li>
                                    <li><a href="../" target="_new"><i class="fa fa-angle-double-right"></i> Your Blog(New window)</a></li>
                                    <li><a href="stats.cfm"><i class="fa fa-angle-double-right"></i> Your Blog Stats</a></li>
                                </ul>
                            </li>
                            <li class="treeview">
                                <a href="##">
                                    <i class="fa fa-cog"></i> <span>Settings</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                	<cfif application.settings>
										<li><a href="settings.cfm"><i class="fa fa-angle-double-right"></i> Main Settings</a></li>
									</cfif>
									<cfif application.blog.isBlogAuthorized('ManageUsers')>
										<li><a href="users.cfm"><i class="fa fa-angle-double-right"></i> Users</a></li>
									</cfif>
									<li><a href="subscribers.cfm"><i class="fa fa-angle-double-right"></i> Subscribers</a></li>
									<li><a href="mailsubscribers.cfm"><i class="fa fa-angle-double-right"></i> Mail Subscribers</a></li>
                                    <cfif application.blog.isBlogAuthorized('PageAdmin')>
											<li><a href="pods.cfm"><i class="fa fa-angle-double-right"></i> Pod Manager</a></li>
										<cfif application.filebrowse>
											<li><a href="filemanager.cfm"><i class="fa fa-angle-double-right"></i> File Manager</a></li>
										</cfif>
										<li><a href="pages.cfm"><i class="fa fa-angle-double-right"></i> Pages</a></li>
										<li><a href="slideshows.cfm"><i class="fa fa-angle-double-right"></i> Slideshows</a></li>
										<li><a href="textblocks.cfm"><i class="fa fa-angle-double-right"></i> Textblocks</a></li>
										<li><a href="index.cfm?reinit=1"><i class="fa fa-angle-double-right"></i> Refresh Blog Cache</a></li>
									</cfif>
									
                                </ul>
                            </li>
                        </ul>
                    </section>
                    <!-- /.sidebar -->
                </aside>
                <aside class="right-side">
	                <section class="content">
		                <div id="content">
						<div id="blogTitle">
							#htmlEditFormat(application.blog.getProperty("blogTitle"))#
						</div>
						<div id="header">
							#attributes.title#
						</div>
						<cfelse>
						<div id="content">
						</cfif>


						</cfoutput>

						<cfelse>

						<cfoutput>
						</div>
					</section>
				</aside>
        </div><!-- ./wrapper -->	

<!--- <div id="content">
<div id="blogTitle">#htmlEditFormat(application.blog.getProperty("blogTitle"))#</div>
<div id="header">#attributes.title#</div> --->


</body>
</html>
</cfoutput>

</cfif>

<cfsetting enablecfoutputonly=false>