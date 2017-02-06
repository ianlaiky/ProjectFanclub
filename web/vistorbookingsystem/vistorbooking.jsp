<%--
  Created by IntelliJ IDEA.
  User: 154404g
  Date: 12/15/2016
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 154404g
  Date: 12/15/2016
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="../assets/img/favicon.png"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Visitorbooking</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <!-- Canonical SEO -->
    <link rel="canonical" href="http://www.creative-tim.com/product/material-dashboard-pro"/>
    <!--  Social tags      -->
    <meta name="keywords"
          content="material dashboard, bootstrap material admin, bootstrap material dashboard, material design admin, material design, creative tim, html dashboard, html css dashboard, web dashboard, freebie, free bootstrap dashboard, css3 dashboard, bootstrap admin, bootstrap dashboard, frontend, responsive bootstrap dashboard, premiu material design admin">
    <meta name="description"
          content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template">
    <meta itemprop="description"
          content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
    <meta itemprop="image" content="http://s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg">
    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template">
    <meta name="twitter:description"
          content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:image" content="http://s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg">
    <!-- Open Graph data -->
    <meta property="fb:app_id" content="655968634437471">
    <meta property="og:title" content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template"/>
    <meta property="og:type" content="article"/>
    <meta property="og:url" content="http://www.creative-tim.com/product/material-dashboard-pro"/>
    <meta property="og:image" content="http://s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg"/>
    <meta property="og:description"
          content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design."/>
    <meta property="og:site_name" content="Creative Tim"/>
    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!--  Material Dashboard CSS    -->
    <link href="../assets/css/material-dashboard2.css" rel="stylesheet"/>
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../assets/css/demo2.css" rel="stylesheet"/>
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons"/>
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-active-color="green" data-background-color="black"
         data-image="../../assets/img/sidebar-1.jpg">
        <!--
    Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
    Tip 2: you can also add an image using data-image tag
    Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->
        <div class="logo">
            <a href="../patientFrontPage.jsp" class="simple-text">
                Vistor Booking
            </a>
        </div>
        <div class="logo logo-mini">
            <a href="#" class="simple-text">
                FD
            </a>
        </div>
        <div class="sidebar-wrapper ps-container ps-theme-default ps-active-x"
             data-ps-id="27535860-4b1b-c8e5-ec90-4de4d32f70a0">
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/faces/marc.jpg"/>
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        <%= session.getAttribute("username") %>

                    </a>
                    <%--<div class="collapse" id="collapseExample">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="#">My Profile</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="#">Edit Profile</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="#">Settings</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                </div>
            </div>
            <ul class="nav">
                <li>
                    <a href="/logout">
                        <i class="material-icons">exit_to_app</i>
                        <p>Logout</p>
                    </a>
                </li>
                <%--<li class="active">--%>
                    <%--<a href="index.jsp">--%>
                        <%--<i class="material-icons">dashboard</i>--%>
                        <%--<p>Dashboard</p>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a data-toggle="collapse" href="#pagesExamples">--%>
                        <%--<i class="material-icons">image</i>--%>
                        <%--<p>Pages--%>
                            <%--<b class="caret"></b>--%>
                        <%--</p>--%>
                    <%--</a>--%>
                    <%--<div class="collapse" id="pagesExamples">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="../pages/pricing.html">Pricing</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../pages/timeline.html">Timeline</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../pages/login.html">Login Page</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../pages/register.html">Register Page</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../pages/lock.html">Lock Screen Page</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../pages/user.html">User Profile</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a data-toggle="collapse" href="#componentsExamples">--%>
                        <%--<i class="material-icons">apps</i>--%>
                        <%--<p>Components--%>
                            <%--<b class="caret"></b>--%>
                        <%--</p>--%>
                    <%--</a>--%>
                    <%--<div class="collapse" id="componentsExamples">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="../components/buttons.html">Buttons</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../components/grid.html">Grid System</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../components/panels.html">Panels</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../components/sweet-alert.html">Sweet Alert</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../components/notifications.html">Notifications</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../components/icons.html">Icons</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../components/typography.html">Typography</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a data-toggle="collapse" href="#formsExamples">--%>
                        <%--<i class="material-icons">content_paste</i>--%>
                        <%--<p>Forms--%>
                            <%--<b class="caret"></b>--%>
                        <%--</p>--%>
                    <%--</a>--%>
                    <%--<div class="collapse" id="formsExamples">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="../forms/regular.html">Regular Forms</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../forms/extended.html">Extended Forms</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../forms/validation.html">Validation Forms</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="form/profile.jsp">Wizard</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a data-toggle="collapse" href="#tablesExamples">--%>
                        <%--<i class="material-icons">grid_on</i>--%>
                        <%--<p>Tables--%>
                            <%--<b class="caret"></b>--%>
                        <%--</p>--%>
                    <%--</a>--%>
                    <%--<div class="collapse" id="tablesExamples">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="../tables/regular.html">Regular Tables</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../tables/extended.html">Extended Tables</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../tables/datatables.net.html">DataTables.net</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a data-toggle="collapse" href="#mapsExamples">--%>
                        <%--<i class="material-icons">place</i>--%>
                        <%--<p>Maps--%>
                            <%--<b class="caret"></b>--%>
                        <%--</p>--%>
                    <%--</a>--%>
                    <%--<div class="collapse" id="mapsExamples">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="../maps/google.html">Google Maps</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../maps/fullscreen.html">Full Screen Map</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="../maps/vector.html">Vector Map</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="../widgets.html">--%>
                        <%--<i class="material-icons">widgets</i>--%>
                        <%--<p>Widgets</p>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="../charts.html">--%>
                        <%--<i class="material-icons">timeline</i>--%>
                        <%--<p>Charts</p>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="../calendar.html">--%>
                        <%--<i class="material-icons">date_range</i>--%>
                        <%--<p>Calendar</p>--%>
                    <%--</a>--%>
                <%--</li>--%>
            </ul>
        </div>
    </div>
    <div class="main-panel ps-container ps-theme-default ps-active-y" data-ps-id="65ac8db9-de08-275b-5f50-5be114b3ac44">
        <nav class="navbar navbar-transparent navbar-absolute">
            <div class="container-fluid">
                <div class="navbar-minimize">
                    <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                        <i class="material-icons visible-on-sidebar-regular">more_vert</i>
                        <i class="material-icons visible-on-sidebar-mini">view_list</i>
                    </button>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> Home </a>
                </div>
                <%--<div class="collapse navbar-collapse">--%>
                    <%--<ul class="nav navbar-nav navbar-right">--%>
                        <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<i class="material-icons">dashboard</i>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<p class="hidden-lg hidden-md">Dashboard</p>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li class="dropdown">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<a href="#" class="dropdown-toggle" data-toggle="dropdown">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<i class="material-icons">notifications</i>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<span class="notification">5</span>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<p class="hidden-lg hidden-md">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;Notifications&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<b class="caret"></b>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</p>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<ul class="dropdown-menu">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="#">Mike John responded to your email</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="#">You have 5 new tasks</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="#">You're now friend with Andrew</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="#">Another Notification</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<a href="#">Another One</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                        <%--<li>--%>
                            <%--<a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">--%>
                                <%--<i class="material-icons">person</i>--%>
                                <%--<p class="hidden-lg hidden-md">Profile</p>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="separator hidden-lg hidden-md"></li>--%>
                    <%--</ul>--%>
                    <%--&lt;%&ndash;<form class="navbar-form navbar-right" role="search">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<div class="form-group form-search is-empty">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<input type="text" class="form-control" placeholder="Search">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<span class="material-input"></span>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<button type="submit" class="btn btn-white btn-round btn-just-icon">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<i class="material-icons">search</i>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<div class="ripple-container"></div>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</button>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
                <%--</div>--%>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="col-sm-8 col-sm-offset-2">
                    <!-- Insert all the awesome body content here->


                       -->
                    <form action="/vistorbookingsave" method="post">

                    <div class="col-sm-6">
                        <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">face</i>
                                                        </span>
                            <div class="form-group label-floating">
                                <label class="control-label">Name
                                </label>
                                <input name="name" type="text" class="form-control" value="<%=session.getAttribute("firstName")%>" required="true" disabled>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">info_outline</i>
                            </span>
                            <div class="form-group label-floating">
                                <label class="control-label">NRIC
                                </label>
                                <input name="nric" type="text" class="form-control" required>
                            </div>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">perm_contact_calendar</i>
                            </span>
                            <div class="form-group label-floating">
                                <label class="control-label">Date
                                </label>
                                <input  type="text" class="form-control" id="datepicker" name="date" required>
                            </div>
                            <div class="input-group">
                                <meta charset="utf-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1">
                                <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
                                <link rel="stylesheet" href="/resources/demos/style.css">
                                <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
                                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                                <script>
                                    $( function() {
                                        $( "#datepicker" ).datepicker();
                                    } );
                                </script>
                            </div>
                        </div>
                        <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">av_timer</i>
                                                        </span>
                            <div class="form-group label-floating">
                                <label class="control-label">Select Time
                                </label>
                                <select name="time">
                                    <option value="13:00">13:00</option>
                                    <option value="14:00">14:00</option>
                                    <option value="15:00">15:00</option>
                                    <option value="16:00">16:00</option>
                                    <option value="17:00">17:00</option>
                                </select>
                            </div>
                        </div>
                        <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">contact_phone</i>
                                                        </span>
                            <div class="form-group label-floating">
                                <label class="control-label">phone
                                </label>
                                <input name="phone" type="tel" class="form-control" validate="tel" pattern="[0-9]{8}" required="true">
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">email</i>
                            </span>
                            <div class="form-group label-floating">
                                <label class="control-label">E-mail Address
                                </label>
                                <input name="email" type="email" class="form-control" required>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">perm_identity</i>
                            </span>
                            <div class="form-group label-floating">
                                <label class="control-label">Relative's NRIC
                                </label>
                                <input  type="text" class="form-control" name="relativeNRIC"required>
                            </div>
                        </div>
                        <div class="input-group">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Patient Name
                                        </label>
                                        <input type="text"  class="form-control" name="patientName">
                                    </div>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Room number
                                        </label>
                                        <input type="text" class="form-control" name="roomnum">
                                    </div>
                                </div>
                        <input class="btn btn-rose btn-fill" type="submit">
                            </div>


                    </form>
                        </div>

                    </div>
                </div>
            </div>


<%--<div class="fixed-plugin">--%>
    <%--<div class="dropdown show-dropdown">--%>
        <%--<a href="#" data-toggle="dropdown">--%>
            <%--<i class="fa fa-cog fa-2x"> </i>--%>
        <%--</a>--%>
        <%--<ul class="dropdown-menu">--%>
            <%--<li class="header-title"> Sidebar Filters</li>--%>
            <%--<li class="adjustments-line">--%>
                <%--<a href="javascript:void(0)" class="switch-trigger active-color">--%>
                    <%--<div class="badge-colors text-center">--%>
                        <%--<span class="badge filter badge-purple" data-color="purple"></span>--%>
                        <%--<span class="badge filter badge-blue" data-color="blue"></span>--%>
                        <%--<span class="badge filter badge-green" data-color="green"></span>--%>
                        <%--<span class="badge filter badge-orange" data-color="orange"></span>--%>
                        <%--<span class="badge filter badge-red" data-color="red"></span>--%>
                        <%--<span class="badge filter badge-rose active" data-color="green"></span>--%>
                    <%--</div>--%>
                    <%--<div class="clearfix"></div>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li class="header-title">Sidebar Background</li>--%>
            <%--<li class="adjustments-line">--%>
                <%--<a href="javascript:void(0)" class="switch-trigger background-color">--%>
                    <%--<div class="text-center">--%>
                        <%--<span class="badge filter badge-white" data-color="white"></span>--%>
                        <%--<span class="badge filter badge-black active" data-color="black"></span>--%>
                    <%--</div>--%>
                    <%--<div class="clearfix"></div>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li class="adjustments-line">--%>
                <%--<a href="javascript:void(0)" class="switch-trigger">--%>
                    <%--<p>Sidebar Mini</p>--%>
                    <%--<div class="togglebutton switch-sidebar-mini">--%>
                        <%--<label>--%>
                            <%--<input type="checkbox" unchecked="">--%>
                        <%--</label>--%>
                    <%--</div>--%>
                    <%--<div class="clearfix"></div>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li class="adjustments-line">--%>
                <%--<a href="javascript:void(0)" class="switch-trigger">--%>
                    <%--<p>Sidebar Image</p>--%>
                    <%--<div class="togglebutton switch-sidebar-image">--%>
                        <%--<label>--%>
                            <%--<input type="checkbox" checked="">--%>
                        <%--</label>--%>
                    <%--</div>--%>
                    <%--<div class="clearfix"></div>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li class="header-title">Images</li>--%>
            <%--<li class="active">--%>
                <%--<a class="img-holder switch-trigger" href="javascript:void(0)">--%>
                    <%--<img src="../../assets/img/sidebar-1.jpg" alt=""/>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a class="img-holder switch-trigger" href="javascript:void(0)">--%>
                    <%--<img src="../../assets/img/sidebar-2.jpg" alt=""/>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a class="img-holder switch-trigger" href="javascript:void(0)">--%>
                    <%--<img src="../../assets/img/sidebar-3.jpg" alt=""/>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a class="img-holder switch-trigger" href="javascript:void(0)">--%>
                    <%--<img src="../../assets/img/sidebar-4.jpg" alt=""/>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li class="button-container">--%>
                <%--<div class="">--%>
                    <%--<a href="http://www.creative-tim.com/product/material-dashboard-pro" target="_blank"--%>
                       <%--class="btn btn-rose btn-block">Buy Now</a>--%>
                <%--</div>--%>
                <%--<div class="">--%>
                    <%--<a href="http://www.creative-tim.com/product/material-dashboard" target="_blank"--%>
                       <%--class="btn btn-info btn-block">Get Free Demo</a>--%>
                <%--</div>--%>
            <%--</li>--%>
            <%--<li class="header-title">Thank you for 95 shares!</li>--%>
            <%--<li class="button-container">--%>
                <%--<button id="twitter" class="btn btn-social btn-twitter btn-round"><i class="fa fa-twitter"></i> &middot;--%>
                    <%--45--%>
                <%--</button>--%>
                <%--<button id="facebook" class="btn btn-social btn-facebook btn-round"><i--%>
                        <%--class="fa fa-facebook-square"> &middot;</i>50--%>
                <%--</button>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</div>--%>
</div></body>
<!--   Core JS Files   -->
<script src="../../assets/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="../../assets/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="../../assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../../assets/js/material.min.js" type="text/javascript"></script>
<script src="../../assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="../../assets/js/jquery.validate.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="../../assets/js/moment.min.js"></script>
<!--  Charts Plugin -->
<script src="../../assets/js/chartist.min.js"></script>
<!--  Plugin for the Wizard -->
<script src="../../assets/js/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin    -->
<script src="../../assets/js/bootstrap-notify.js"></script>
<!--   Sharrre Library    -->
<script src="../../assets/js/jquery.sharrre.js"></script>
<!-- DateTimePicker Plugin -->
<script src="../../assets/js/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin -->
<script src="../../assets/js/jquery-jvectormap.js"></script>
<!-- Sliders Plugin -->
<script src="../../assets/js/nouislider.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<!-- Select Plugin -->
<script src="../../assets/js/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin    -->
<script src="../../assets/js/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin -->
<script src="../../assets/js/sweetalert2.js"></script>
<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="../../assets/js/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin    -->
<script src="../../assets/js/fullcalendar.min.js"></script>
<!-- TagsInput Plugin -->
<script src="../../assets/js/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="../../assets/js/material-dashboard2.js"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="../../assets/js/demo2.js"></script>
<script type="text/javascript">
    $().ready(function () {
        demo.initMaterialWizard();
    });
</script>

</html>
