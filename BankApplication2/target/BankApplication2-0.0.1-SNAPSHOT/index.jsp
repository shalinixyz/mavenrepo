<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
	
<!-- Mirrored from themes.loxdesign.net/phoenix/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 13 Apr 2016 06:23:08 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <title>Phoenix</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- ===================== Touch Icons ===================== -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57-precomposed.png">

    <!-- ===================== CSS ===================== -->    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>  
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap/bootstrap-responsive.min.css">    

    <!-- Site specific - CSS --> 
    <link rel="stylesheet" href="css/theme_light/prettify.css">    
    <link rel="stylesheet" href="css/theme_light/tables/dataTables.css">         
    <link rel='stylesheet' href='css/theme_light/calendar/fullcalendar.css' />
    <link rel='stylesheet' href='css/theme_light/calendar/fullcalendar.print.css' media='print' /> 
    <link rel="stylesheet" href="css/theme_light/formselements/chosen.css">
    <link rel="stylesheet" href="css/theme_light/formselements/dropkick.css">
    <link rel="stylesheet" href="css/theme_light/jquery-ui-1.8.20.custom.css">        

    <!-- Common - CSS -->     
    <link rel="stylesheet" href="css/theme_light/common.css">  
    <link rel="stylesheet" href="css/theme_light.css" class="style_set">
    
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    <div id="loader_cont"><img src="img/loaders/page_loader.gif"></div> 
    <div class="options_cont">
      <form name="myForm">
        <a class="options_btn" href="#">OPTIONS</a> 
        <div class="options group">
          <div>
            <p>Background image:</p>
            <ul class="background_list">
              <li><a class="current" id='bg_1' href="#">bg_1</a></li>
              <li><a id='bg_2' href="#">bg_2</a></li>
              <li><a id='bg_3' href="#">bg_3</a></li>
              <li><a id='bg_4' href="#">bg_4</a></li>
              <li><a id='bg_5' href="#">bg_5</a></li>
              <li><a id='bg_6' href="#">bg_6</a></li>
              <li><a id='bg_7' href="#">bg_7</a></li>
              <li><a id='bg_8' href="#">bg_8</a></li>
              <li><a id='bg_9' href="#">bg_9</a></li>
              <li><a id='bg_10' href="#">bg_10</a></li>
            </ul>
          </div>
          <div>
            <p>Color styling:</p>
            <ul class="color_list">
              <li><a class="current" id='c_1' href="#" title="Rose">rose</a></li>
              <li><a id='c_2' href="#" title="Orange">orange</a></li>
              <li><a id='c_3' href="#" title="Apple Green">apple_green</a></li>
              <li><a id='c_4' href="#" title="Sky Blue">sky_blue</a></li>
              <li><a id='c_5' href="#" title="Purple">purple</a></li>
            </ul>            
          </div>
          <div>
            <p>Patterns:</p>
            <ul class="pattern_list">
              <li><a class="current" id='p_1' href="#" title="Stripes Right">p_1</a></li>
              <li><a id='p_2' href="#" title="Stripes Left">p_2</a></li>
              <li><a id='p_3' href="#" title="Noise">p_3</a></li>
              <li><a id='p_4' href="#" title="Plain">p_4</a></li>              
            </ul>            
          </div>
          <div class="top_mn_setup">
            <p>Display top menu on:</p>
            <div>
              <input id="top_menu_click" checked="checked" type="radio" value="1" class="menu_show" name="top_menu_show"><label for="top_menu_click">Click</label>
              <input id="top_menu_hover" type="radio" value="0" class="menu_show" name="top_menu_show"><label for="top_menu_hover">Hover</label>
            </div>            
          </div>  
          <div class="clear_cache_cont"><a class="btn btn-mini" href="#">Clear Cache</a></div>              
        </div> 
      </form> 
    </div>   
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="sweet-gray sweet-go-back-from-screen">&nbsp;</span>
          </a>
          <div class="nav-collapse">            
            <ul class="nav main_nav" role="navigation">                
                <li id="mail" class="styled dropdown mail">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mail<span class="info">2</span></a>
                  <ul class="dropdown-menu top_menu">
                      <li><a class="mn_new_msg" href="mail.html"><span>New Message</span></a></li>
                      <li><a class="mn_inbox" href="mail.html"><span>Inbox</span></a></li>
                      <li><a class="mn_outbox" href="mail.html"><span>OutBox</span></a></li>
                      <li><a class="mn_spam" href="mail.html"><span>Spam</span></a></li>
                      <li><a class="mn_trash" href="mail.html"><span>Trash</span></a></li>
                  </ul>
                </li>
                <li id="chat" class="styled chat">
                  <a data-toggle="modal" href="#chat_modal">Chat<span class="info">5</span></a>     
                </li>
                <li id="notification" class="styled dropdown notification">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Notification<span class="info">4</span></a>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="#">                          
                          Lorem ipsum dolor sit amet, consectetur adipiscing elit...
                            <span>07/19/2012</span>                       
                        </a>
                    </li>
                    <li>
                        <a href="#">
                          Vivamus ut enim vitae nibh aliquet pre-tium lobortis sit amet tortor...
                            <span>07/19/2012</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                          Ut id dui arcu, non tempus nunc...
                            <span>07/19/2012</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                          Morbi faucibus suscipit nibh, ut pellen-tesque lectus pellentesque non....
                            <span>07/19/2012</span>
                        </a>
                    </li>                        
                    <li class="show_all"><a href="#">Show all notifications</a></li> 
                  </ul>
                </li>                          
            </ul> 
            <ul class="main_nav nav pull-right">                
                <li id="search" class="search"> 
                  <a href="#">Search</a> 
                  <div class="search_cont">
                      <form class="navbar-search form-search">                          
                          <input type="text" class="input-medium search-query" placeholder="Search">
                          <button type="submit">Search</button>
                      </form> 
                  </div>              
                </li> 
                <li id="settings" class="styled dropdown settings">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Settings</a>
                    <ul class="dropdown-menu top_menu">
                        <li class="show_all">Settings</li>
                        <li><a class="mn_site" href="#"><span>Site</span></a></li>
                        <li><a class="mn_admin" href="#"><span>Admin</span></a></li>
                        <li><a class="mn_mail" href="#"><span>Mail</span></a></li>
                        <li><a class="mn_user" href="#"><span>User</span></a></li>
                    </ul>
                </li>
                <li id="profile" class="styled dropdown profile">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Profile</a>
                    <ul class="dropdown-menu top_menu">                        
                        <li class="profile group">
                          <img src="img/general/user_1.jpg" width="50" height="50" alt="User">
                          <ul>
                            <li><strong>John Doe</strong></li>
                            <li>@johndoe</li>
                            <li><span>Administrator</span></li>
                          </ul>
                        </li>
                        <li><a class="mn_settings" href="#"><span>My Settings</span></a></li>
                        <li><a class="mn_profile" href="profile.html"><span>My Profile</span></a></li>
                        <li><a class="mn_logout" href="login.html"><span>Logout</span></a></li>
                    </ul>
                </li>                          
            </ul>           
          </div>
          <h1 class="brand"><a href="index-2.jsp">MCCOY</a></h1>                                       
        </div>
      </div>
    </div>
       
      <div class="main_content row-fluid">

        <div class="span3">

          <div class="side_nav sidebar-nav" data-spy="affix" data-offset-top="150">
            <div class="sidebar_widget first_widget group">
              <form class="sidebar_search form-search">
                <input type="text" class="input-medium search-query" placeholder="Quick search">
                <button type="submit" class="btn btn-inverse"><i class="icon-search icon-gray"></i></button>
              </form>
            </div>
            <h3 class="main_menu group">
                <span class="title">Main Menu</span>
                <a id="nav_list_btn" class="btn-collapse btn btn-inverse">
                  <span class="sweet-gray sweet-go-back-from-screen">&nbsp;</span>              
                </a>
            </h3>
            <ul class="nav nav-list">                          
              <li class="active"><a class="home" href="index-2.jsp">Dashboard</a></li>
              <li class="sub">
                <a class="forms" href="#">Forms<span>5</span></a>
                <ul>
                  <li><a href="forms_layout.html">Layout</a></li>
                  <li><a href="forms_elements.html">Elements</a></li>
                  <li><a href="forms_validation.html">Validation</a></li>
                  <li><a href="forms_wizard.html">Wizard</a></li>
                  <li><a href="forms_uploader.html">File uploader &amp; WYSIWYG</a></li>                                                      
                </ul>
              </li>
              
              <li class="sub">
                <a class="tables" href="#">Tables<span>2</span></a>
                <ul>
                  <li><a href="tables_basic.html">Basic</a></li>
                  <li><a href="tables_advanced.html">Advanced</a></li>
                </ul>
              </li>
              <li><a class="calendar" href="calendar.html">Calendar</a></li>
              <li><a class="gallery" href="gallery.html">Gallery</a></li>
              <li class="sub">
                <a class="uielements" href="#">UI Elements<span>8</span></a>
                <ul>
                  <li><a href="accordions.html">Accordions</a></li>                  
                  <li><a href="buttons_icons.html">Buttons and Icons</a></li>
                  <li><a href="breadcrumbs.html">Breadcrumbs</a></li>
                  <li><a href="progressbars.html">Progressbars</a></li>                  
                  <li><a href="sliders.html">Sliders</a></li>                                    
                  <li><a href="tabs.html">Tabs</a></li>        
                  <li><a href="tooltips_popovers.html">Tooltips and Popovers</a></li>                                    
                  <li><a href="miscellaneous.html">Misc</a></li>
                </ul>
              </li>              
           
              <li class="sub">
                <a class="pages" href="#">Pages<span>6</span></a>
                <ul>
                  <li><a href="login.html">Login</a></li>                  
                  <li><a href="search.html">Search</a></li>
                  <li><a href="mail.html">Mail</a></li>
         
                  <li class="sub"> 
                    <a href="#">Error<span>6</span></a>
                    <ul>
                      <li><a href="error_403.html">403</a></li>
                      <li><a href="error_404.html">404</a></li>
                      <li><a href="error_405.html">405</a></li>
                      <li><a href="error_500.html">500</a></li>
                      <li><a href="error_503.html">503</a></li>
                      <li><a href="offline.html">Offline</a></li>
                    </ul>
                  </li>                  
                </ul>
              </li>                        
            </ul>
            
            <div class="sidebar_widget group">
              <h3>
                Content Overview
                <a id="toggle_widget_info" class="btn-side-collapse btn btn-inverse" >
                  <span class="sweet-gray sweet-go-back-from-screen">&nbsp;</span>              
                </a>
              </h3>
              <ul class="widget_info">                
                <li><a href="#"><i class="sweet-mail sweet-gray"></i><span>25</span> - Post</a></li>                
                <li><a href="#"><i class="sweet-document sweet-gray"></i><span>6</span> - Page</a></li>                                
                <li><a href="#"><i class="sweet-list-images sweet-gray"></i><span>21</span> - Category</a></li>                                
                <li><a href="#"><i class="sweet-tag-2 sweet-gray"></i><span>134</span> - Tags</a></li>
              </ul>              
            </div>
            
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="row-fluid">
            <div class="span12">

              <ul class="breadcrumb br_styled no_space">                              
                <li class="active">Dashboard</li>
              </ul> 
              <ul class="page_info">
                  <li><h2>Dashboard</h2></li>
                  <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
              </ul>

              <div class="widget chart">
                <header>
                    <h3>flot Chart <span>- Line chart</span></h3>
                    <ul class="toggle_content">                          
                        <li class="arrow"><a href="#">Toggle Content</a></li>
                    </ul>
                </header>
                <section>
                    <div id="chart"></div>                
                </section>
              </div>

              <div class="widget">
                <header>
                    <h3>Basic Table <span> - with checkboxes and sortable handles</span></h3>
                    <ul class="toggle_content">                         
                        <li class="arrow"><a href="#">Toggle Content</a></li>
                    </ul>
                </header>
                <section>                         
                     <table id="check_2" class="table_basic sortable chbox css">
                        <thead>
                            <tr>
                              <td><input name="chbox" type="checkbox" value=""></td>
                                <td><a class="sort_desc" href="#">Column 1</a></td>
                                <td><a class="sort_asc" href="#">Column 2</a></td>
                                <td><a href="#">Column 3</a></td>
                                <td><a href="#">Column 4</a></td>
                                <td><a href="#">Column 5</a></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td><input name="chbox" type="checkbox" value=""></td>
                                <td>Row 1</td>
                                <td>Row 1</td>
                                <td>Row 1</td>
                                <td>Row 1</td>
                                <td>Row 1</td>
                            </tr>
                            <tr>
                                <td><input name="chbox" type="checkbox" value=""></td>                                    
                                <td>Row 2</td>
                                <td>Row 2</td>
                                <td>Row 2</td>
                                <td>Row 2</td>
                                <td>Row 2</td>
                            </tr>
                            <tr>
                                <td><input name="chbox" type="checkbox" value=""></td>                                                                        
                                <td>Row 3</td>
                                <td>Row 3</td>
                                <td>Row 3</td>
                                <td>Row 3</td>
                                <td>Row 3</td>
                            </tr>
                            <tr>
                                <td><input name="chbox" type="checkbox" value=""></td>                                                                        
                                <td>Row 4</td>
                                <td>Row 4</td>
                                <td>Row 4</td>
                                <td>Row 4</td>
                                <td>Row 4</td>
                            </tr>
                            <tr>
                                <td><input name="chbox" type="checkbox" value=""></td>                                                                        
                                <td>Row 5</td>
                                <td>Row 5</td>
                                <td>Row 5</td>
                                <td>Row 5</td>
                                <td>Row 5</td>
                            </tr>                                   
                        </tbody>
                        <tfoot>
                            <tr>
                                <td><input name="chbox" type="checkbox" value=""></td>                                                                        
                                <td>Column 1</td>
                                <td>Column 2</td>
                                <td>Column 3</td>
                                <td>Column 4</td>
                                <td>Column 5</td>
                            </tr>
                        </tfoot>
                    </table>                      
                </section>
              </div>

              <div class="widget">
                  <header>
                      <h3>Advanced Table</h3>
                      <ul class="toggle_content">                         
                          <li class="arrow"><a href="#">Toggle Content</a></li>
                      </ul>
                  </header>
                  <section class="group">                         
                       <table id="example" class="display" >
                          <thead>
                              <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr class="gradeX">
                                  <td>Trident</td>
                                  <td>Internet
                                       Explorer 4.0</td>
                                  <td>Win 95+</td>
                                  <td class="center">4</td>
                                  <td class="center">X</td>
                              </tr>
                              <tr class="gradeC">
                                  <td>Trident</td>
                                  <td>Internet
                                       Explorer 5.0</td>
                                  <td>Win 95+</td>
                                  <td class="center">5</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>Trident</td>
                                  <td>Internet
                                       Explorer 5.5</td>
                                  <td>Win 95+</td>
                                  <td class="center">5.5</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>Trident</td>
                                  <td>Internet
                                       Explorer 6</td>
                                  <td>Win 98+</td>
                                  <td class="center">6</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>Trident</td>
                                  <td>Internet Explorer 7</td>
                                  <td>Win XP SP2+</td>
                                  <td class="center">7</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>Trident</td>
                                  <td>AOL browser (AOL desktop)</td>
                                  <td>Win XP</td>
                                  <td class="center">6</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 1.0</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td class="center">1.7</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 1.5</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 2.0</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 3.0</td>
                                  <td>Win 2k+ / OSX.3+</td>
                                  <td class="center">1.9</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Camino 1.0</td>
                                  <td>OSX.2+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Camino 1.5</td>
                                  <td>OSX.3+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Netscape 7.2</td>
                                  <td>Win 95+ / Mac OS 8.6-9.2</td>
                                  <td class="center">1.7</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Netscape Browser 8</td>
                                  <td>Win 98SE+</td>
                                  <td class="center">1.7</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Netscape Navigator 9</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.0</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.1</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1.1</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.2</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1.2</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.3</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1.3</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.4</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1.4</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.5</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1.5</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.6</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">1.6</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.7</td>
                                  <td>Win 98+ / OSX.1+</td>
                                  <td class="center">1.7</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.8</td>
                                  <td>Win 98+ / OSX.1+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Seamonkey 1.1</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Epiphany 2.20</td>
                                  <td>Gnome</td>
                                  <td class="center">1.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 1.2</td>
                                  <td>OSX.3</td>
                                  <td class="center">125.5</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 1.3</td>
                                  <td>OSX.3</td>
                                  <td class="center">312.8</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 2.0</td>
                                  <td>OSX.4+</td>
                                  <td class="center">419.3</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 3.0</td>
                                  <td>OSX.4+</td>
                                  <td class="center">522.1</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>OmniWeb 5.5</td>
                                  <td>OSX.4+</td>
                                  <td class="center">420</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>iPod Touch / iPhone</td>
                                  <td>iPod</td>
                                  <td class="center">420.1</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>S60</td>
                                  <td>S60</td>
                                  <td class="center">413</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 7.0</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 7.5</td>
                                  <td>Win 95+ / OSX.2+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 8.0</td>
                                  <td>Win 95+ / OSX.2+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 8.5</td>
                                  <td>Win 95+ / OSX.2+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 9.0</td>
                                  <td>Win 95+ / OSX.3+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 9.2</td>
                                  <td>Win 88+ / OSX.3+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 9.5</td>
                                  <td>Win 88+ / OSX.3+</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera for Wii</td>
                                  <td>Wii</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Nokia N800</td>
                                  <td>N800</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Nintendo DS browser</td>
                                  <td>Nintendo DS</td>
                                  <td class="center">8.5</td>
                                  <td class="center">C/A<sup>1</sup></td>
                              </tr>
                              <tr class="gradeC">
                                  <td>KHTML</td>
                                  <td>Konqureror 3.1</td>
                                  <td>KDE 3.1</td>
                                  <td class="center">3.1</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>KHTML</td>
                                  <td>Konqureror 3.3</td>
                                  <td>KDE 3.3</td>
                                  <td class="center">3.3</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>KHTML</td>
                                  <td>Konqureror 3.5</td>
                                  <td>KDE 3.5</td>
                                  <td class="center">3.5</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr class="gradeX">
                                  <td>Tasman</td>
                                  <td>Internet Explorer 4.5</td>
                                  <td>Mac OS 8-9</td>
                                  <td class="center">-</td>
                                  <td class="center">X</td>
                              </tr>
                              <tr class="gradeC">
                                  <td>Tasman</td>
                                  <td>Internet Explorer 5.1</td>
                                  <td>Mac OS 7.6-9</td>
                                  <td class="center">1</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeC">
                                  <td>Tasman</td>
                                  <td>Internet Explorer 5.2</td>
                                  <td>Mac OS 8-X</td>
                                  <td class="center">1</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>Misc</td>
                                  <td>NetFront 3.1</td>
                                  <td>Embedded devices</td>
                                  <td class="center">-</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeA">
                                  <td>Misc</td>
                                  <td>NetFront 3.4</td>
                                  <td>Embedded devices</td>
                                  <td class="center">-</td>
                                  <td class="center">A</td>
                              </tr>
                              <tr class="gradeX">
                                  <td>Misc</td>
                                  <td>Dillo 0.8</td>
                                  <td>Embedded devices</td>
                                  <td class="center">-</td>
                                  <td class="center">X</td>
                              </tr>
                              <tr class="gradeX">
                                  <td>Misc</td>
                                  <td>Links</td>
                                  <td>Text only</td>
                                  <td class="center">-</td>
                                  <td class="center">X</td>
                              </tr>
                              <tr class="gradeX">
                                  <td>Misc</td>
                                  <td>Lynx</td>
                                  <td>Text only</td>
                                  <td class="center">-</td>
                                  <td class="center">X</td>
                              </tr>
                              <tr class="gradeC">
                                  <td>Misc</td>
                                  <td>IE Mobile</td>
                                  <td>Windows Mobile 6</td>
                                  <td class="center">-</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeC">
                                  <td>Misc</td>
                                  <td>PSP browser</td>
                                  <td>PSP</td>
                                  <td class="center">-</td>
                                  <td class="center">C</td>
                              </tr>
                              <tr class="gradeU">
                                  <td>Other browsers</td>
                                  <td>All others</td>
                                  <td>-</td>
                                  <td class="center">-</td>
                                  <td class="center">U</td>
                              </tr>
                          </tbody>
                      </table>                      
                  </section>
              </div>

              <div class="widget">
                <header>
                    <h3>Calendar</h3>                    
                    <ul class="toggle_content">                          
                      <li class="arrow"><a href="#">Toggle Content</a></li>
                    </ul>
                </header>
                <section class="group">                                         
                    <div id='calendar'></div>               
                </section>
              </div>

              <div class="widget">
                    <header>
                      <h3>Selects</h3>
                      <ul class="toggle_content">                         
                          <li class="arrow"><a href="#">Toggle Content</a></li>
                      </ul>
                    </header>
                    <section class="welly form_align">                         
                      <div class="row-fluid">
                          
                              <select name="state" class="dropkick" tabindex="3" style="width:210px; ">
                                <option value="" selected="selected">Try Me, Too!</option>
                                <option value="AL">Alabama</option>
                                <option value="AK">Alaska</option>
                                <option value="AZ">Arizona</option>
                                <option value="AR">Arkansas</option>
                                <option value="CA">California</option>
                                <option value="CO">Colorado</option>
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="HI">Hawaii</option>
                                <option value="ID">Idaho</option>
                                <option value="IL">Illinois</option>
                                <option value="IN">Indiana</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NV">Nevada</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NM">New Mexico</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="ND">North Dakota</option>
                                <option value="OH">Ohio</option>
                                <option value="OK">Oklahoma</option>
                                <option value="OR">Oregon</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="SD">South Dakota</option>
                                <option value="TN">Tennessee</option>
                                <option value="TX">Texas</option>
                                <option value="UT">Utah</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WA">Washington</option>
                                <option value="WV">West Virginia</option>
                                <option value="WI">Wisconsin</option>
                                <option value="WY">Wyoming</option>
                              </select>                              
                        </div> 
                        <hr>
                        <div class="row-fluid">                          
                              <select data-placeholder="Your Favorite Football Team" style="width:220px;" class="chzn-select" multiple tabindex="6">
                              <option value="#">&nbsp;</option>
                              <optgroup label="NFC EAST">
                                <option>Dallas Cowboys</option>
                                <option>New York Giants</option>
                                <option>Philadelphia Eagles</option>
                                <option>Washington Redskins</option>
                              </optgroup>
                              <optgroup label="NFC NORTH">
                                <option>Chicago Bears</option>
                                <option>Detroit Lions</option>
                                <option>Green Bay Packers</option>
                                <option>Minnesota Vikings</option>
                              </optgroup>
                              <optgroup label="NFC SOUTH">
                                <option>Atlanta Falcons</option>
                                <option>Carolina Panthers</option>
                                <option>New Orleans Saints</option>
                                <option>Tampa Bay Buccaneers</option>
                              </optgroup>
                              <optgroup label="NFC WEST">
                                <option>Arizona Cardinals</option>
                                <option>St. Louis Rams</option>
                                <option>San Francisco 49ers</option>
                                <option>Seattle Seahawks</option>
                              </optgroup>
                              <optgroup label="AFC EAST">
                                <option>Buffalo Bills</option>
                                <option>Miami Dolphins</option>
                                <option>New England Patriots</option>
                                <option>New York Jets</option>
                              </optgroup>
                              <optgroup label="AFC NORTH">
                                <option>Baltimore Ravens</option>
                                <option>Cincinnati Bengals</option>
                                <option>Cleveland Browns</option>
                                <option>Pittsburgh Steelers</option>
                              </optgroup>
                              <optgroup label="AFC SOUTH">
                                <option>Houston Texans</option>
                                <option>Indianapolis Colts</option>
                                <option>Jacksonville Jaguars</option>
                                <option>Tennessee Titans</option>
                              </optgroup>
                              <optgroup label="AFC WEST">
                                <option>Denver Broncos</option>
                                <option>Kansas City Chiefs</option>
                                <option>Oakland Raiders</option>
                                <option>San Diego Chargers</option>
                              </optgroup>
                            </select>                        
                        </div>             
                    </section>
                  </div>
                  
                  <div class="widget">
                    <header>
                      <h3>UI Elements</h3>
                      <ul class="toggle_content">
                          <li class="arrow"><a href="#">Toggle Content</a></li>
                      </ul>
                    </header>
                    <section class="welly">                                                                                        
                        <ul class="breadcrumb br_styled_light">
                          <li><a href="#">Home</a> <span class="divider">/</span></li>
                          <li><a href="#">Library</a> <span class="divider">/</span></li>
                          <li class="active">Data</li>
                        </ul>                        
                        <hr>                        
                        <ul class="breadcrumb br_styled" style="margin-bottom: 5px;">
                          <li><a href="#">Home</a> <span class="divider">/</span></li>
                          <li><a href="#">Library</a> <span class="divider">/</span></li>
                          <li class="active">Data</li>
                        </ul>
                        <hr>
                        <div class="slider_cont">  
                          <div class="slider_txt group">
                            <label for="amount">Price range:</label>
                            <input type="text" id="amount" disabled="disabled" />
                          </div>                        
                          <div id="slider-range" class="slider_styled"></div>
                        </div> 
                        <hr>
                        <ul class="nav nav-tabs tab_styled_light">
                          <li class="active"><a href="#home_1" data-toggle="tab">Home</a></li>
                          <li><a href="#portfolio_1" data-toggle="tab">Profile</a></li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                              <li><a href="#dropdown_1" data-toggle="tab">@fat</a></li>
                              <li><a href="#dropdown_11" data-toggle="tab">@mdo</a></li>
                            </ul>
                          </li>
                        </ul>
                        <div class="tab-content tab_content_light">
                          <div id="home_1" class="tab-pane fade">
                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                          </div>
                          <div id="portfolio_1" class="tab-pane fade">
                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
                          </div>
                          <div id="dropdown_1" class="tab-pane fade active in">
                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                          </div>
                          <div id="dropdown_11" class="tab-pane fade">
                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                          </div>
                        </div>                                                            
                        <hr> 
                        <a href="#" id="notification_1" class="btn">Default style</a>                      
                        <a href="#" id="notification_2" class="btn btn-danger">Error</a>                        
                        <a href="#" id="notification_3" class="btn btn-success">Success</a>                                     
                        <hr>
                        <h5 class="titlee">Custom content scroller</h5>
                        <div class="custom_scroller_container">
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin magna lectus, cursus vitae facilisis ac, adipiscing vitae erat. Mauris sed tellus sapien. Fusce quis felis ut mi pretium placerat. Morbi laoreet lacinia hendrerit. Nullam nec nulla in tortor dictum fringilla. Aliquam luctus mattis aliquet. Proin sagittis, augue in scelerisque adipiscing, orci arcu euismod nibh, ut fringilla erat leo in purus. Sed volutpat elementum eros, nec tincidunt magna porta ut. Morbi gravida, dui quis pulvinar blandit, nulla lorem pharetra libero, sit amet convallis urna libero nec ipsum.</p>
                          <p>Nam egestas massa a augue varius ullamcorper. Mauris quis libero risus, nec adipiscing quam. Pellentesque erat felis, fringilla bibendum venenatis bibendum, tincidunt at nisi. Maecenas pulvinar libero vel lectus tristique quis dignissim magna posuere. Nam vel neque ac orci molestie mattis non sed leo. Nunc in augue laoreet nisl adipiscing posuere. Cras id eleifend libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at magna vitae elit hendrerit mattis posuere quis libero. Pellentesque ac facilisis ante. In consequat rutrum justo, in bibendum sem feugiat quis. Sed porttitor tristique mattis. Aenean vitae sem sit amet nunc iaculis ornare. Donec mauris dolor, lobortis eu convallis vitae, sodales sit amet nisi.</p>
                          <p>Nulla pharetra libero scelerisque neque luctus vitae auctor ante volutpat. Suspendisse risus ipsum, semper eget semper nec, laoreet a nisi. Nulla at est pellentesque libero tincidunt vulputate eu quis arcu. Etiam scelerisque accumsan elit vel viverra. Integer gravida velit et metus porta eu iaculis sapien tristique. Phasellus nec orci vel tortor dignissim posuere id vel est. Sed accumsan sollicitudin elit, a dapibus nunc fermentum hendrerit. Morbi pharetra odio eget leo interdum pretium. Curabitur convallis consectetur varius. Aenean magna est, dapibus nec aliquet sed, aliquam vel magna. Cras vel est at quam malesuada varius sed nec mi. Sed et ligula augue.</p>
                          <p>Cras blandit commodo tristique. Vivamus turpis risus, cursus ac laoreet vel, consequat non arcu. Ut congue adipiscing egestas. Nulla non adipiscing massa. In viverra porta mattis. Mauris laoreet hendrerit nunc, vitae accumsan erat euismod sit amet. Duis eget orci eget erat interdum faucibus. Cras ac magna nulla, vitae molestie nulla.</p>
                          <p>Sed rhoncus tellus ac nibh varius placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus eu arcu sit amet purus egestas condimentum vel in ante. Pellentesque luctus venenatis lectus, at lobortis velit tincidunt nec. Duis quis odio eros. Fusce accumsan dui non libero fermentum ut consectetur sapien laoreet. Curabitur vel luctus augue.</p>
                        </div>                                    
                    </section>
                  </div>
            </div>                  
          </div><!--/row-->
           
          
        </div><!--/span-->
      </div><!--/row-->      
      <hr>

      <footer>
        <p>&copy; LoxDesign.net - Phoenix 2012</p>
      </footer>

    </div><!--/.fluid-container-->

    <!-- ===================== CHAT - Modal ===================== -->
    <div id="chat_modal" class="chat_modal modal fade hide">
      <div class="modal-header">
        <ul>
          <li class="toggle_users"><a href="#">Show Users</a></li>
          <li class="status">
            <a class="online" href="#"><span>Status</span></a>  
            <ul>
               <li><a class="online" href="#" title="Online"><span>Online</span></a></li>
               <li><a class="away" href="#" title="Away"><span>Away</span></a></li>
               <li><a class="busy" href="#" title="Busy"><span>Busy</span></a></li>
               <li><a class="invisiblee" href="#" title="Invisible"><span>Invisible</span></a></li>
               <li><a class="offline" href="#" title="Offline"><span>Offline</span></a></li>
             </ul> 
          </li>
          <li class="chat_name">John Doe</li>
        </ul>       
        <button type="button" class="close" data-dismiss="modal">x</button>        
      </div>
      <div class="modal-body">
        <div class="msg_cont left">
          <img src="img/general/user_1.jpg" width="50" height="50" alt="User">
          <ul>
            <li>
              <h3>John Doe:</h3> 
              <span>16 minutes ago</span>
            </li>
            <li>Aliquam iaculis volutpat ipsum ullamcorper tempus. In in dui tortor. Mauris sed volutpat
metus. Duis ut sapien sapien, id pellentesque orci. Nullam nisl metus, sodales ut laoreet 
eget, pretium porttitor quam. Sed varius vulputate lacinia. </li>
          </ul>    
        </div>
        <div class="msg_cont right">
          <img src="img/general/user_2.jpg" width="50" height="50" alt="User">
          <ul>
            <li>
              <h3>Jessie Doe:</h3> 
              <span>16 minutes ago</span>
            </li>
            <li>Aliquam iaculis volutpat ipsum ullamcorper tempus. In in dui tortor. Mauris sed volutpat
metus. Duis ut sapien sapien, id pellentesque orci. Nullam nisl metus, sodales ut laoreet 
eget, pretium porttitor quam. Sed varius vulputate lacinia. </li>
          </ul>    
        </div>
        <div class="msg_cont left">
          <img src="img/general/user_1.jpg" width="50" height="50" alt="User">
          <ul>
            <li>
              <h3>John Doe:</h3> 
              <span>16 minutes ago</span>
            </li>
            <li>Aliquam iaculis volutpat ipsum ullamcorper tempus. In in dui tortor. Mauris sed volutpat
metus. Duis ut sapien sapien, id pellentesque orci. Nullam nisl metus, sodales ut laoreet 
eget, pretium porttitor quam. Sed varius vulputate lacinia. </li>
          </ul>    
        </div>        
      </div>
      <div class="modal-footer">        
        <textarea></textarea>
        <a href="#" class="btn btn-inverse">Send</a>
      </div>
    </div>    

    <!-- ===================== JS ===================== -->
    <script src="js/libs/jquery-1.7.2.min.js"></script>    
    <script src="js/libs/bootstrap.min.js"></script>   
    <script src="js/libs/ios-orientationchange-fix.js"></script>          
    <script src="js/libs/jquery-ui-1.8.20.custom.min.js"></script>
    <script src="js/plugins/widgets/jquery.sparkline.min.js"></script>
    <script src="js/common.js"></script>  

    <!-- Site specific --> 
    <script src="js/libs/prettify.js"></script>      
    <script src="js/plugins/charts/jquery.flot.min.js"></script>   
    <script src="js/plugins/charts/jquery.flot.resize.min.js"></script>  
    <script src="js/plugins/charts/jquery.flot.pie.min.js"></script>  
    <script src="js/plugins/charts/jquery.flot.stack.min.js"></script>  
    <script src="js/plugins/charts/jquery.flot.symbol.min.js"></script>            
    <!--[if lt IE 9]>      
          <script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
    <![endif]--> 
    <script src="js/plugins/tables/jquery.dataTables.min.js"></script>
    <script src="js/plugins/calendar/fullcalendar.min.js"></script>
    <script src="js/plugins/formselements/chosen.jquery.min.js"></script> 
    <script src="js/plugins/formselements/scrollability.min.js"></script> 
    <script src="js/plugins/formselements/jquery.dropkick-1.0.0.js"></script> 

    <script src="js/script.js"></script>
    <script src="js/specific/sparks.js"></script>
    <script src="js/specific/index.js"></script>

    <script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-31818910-2']);
      _gaq.push(['_setDomainName', 'loxdesign.net']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

    </script>
  </body>

<!-- Mirrored from themes.loxdesign.net/phoenix/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 13 Apr 2016 06:24:01 GMT -->
</html>
