<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>


    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="../../assets/img/favicon.png"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Web Calling</title>
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

    <style>


        .card {
            display: inline-block;
            position: relative;
            width: 130%;
            left: -150px;
            margin: 25px 0;
            box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.14);
            border-radius: 6px;
            color: rgba(0, 0, 0, 0.87);
            background: #fff;
        }

        .wizard-card {
            min-height: 410px;
            box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
        }
    </style>
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
                Video Chat
            </a>
        </div>
        <div class="logo logo-mini">
            <a class="simple-text">
                Chat
            </a>
        </div>
        <div class="sidebar-wrapper ps-container ps-theme-default ps-active-x"
             data-ps-id="27535860-4b1b-c8e5-ec90-4de4d32f70a0">
            <div class="user">
                <div class="photo">
                    <img src="../../assets/img/faces/marc.jpg"/>
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        <%= session.getAttribute("firstName")%>
                        <%--<b class="caret"></b>--%>
                    </a>
                    <%--<div class="collapse" id="collapseExample">--%>
                        <%--<ul class="nav">--%>
                            <%--<li>--%>
                                <%--<a href="../../fooddiet/user/myprofile.jsp">My Profile</a>--%>
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
                <li class="active">
                    <a href="#">
                        <i class="material-icons">dashboard</i>
                        <p>Live Web Calling</p>
                    </a>
                </li>
                <li>
                    <a href="callHistoryForPat.jsp">
                        <i class="material-icons">image</i>
                        <p>Call History</p>
                    </a>
                </li>

                <li>
                    <a href="/logout">
                        <i class="material-icons">exit_to_app</i>
                        <p>Logout</p>
                    </a>
                </li>
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
                    <%--<a class="navbar-brand" href="#"></a>--%>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <%--<li>--%>
                            <%--<a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">--%>
                                <%--<i class="material-icons">dashboard</i>--%>
                                <%--<p class="hidden-lg hidden-md">Dashboard</p>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                                <%--<i class="material-icons">notifications</i>--%>
                                <%--<span class="notification">5</span>--%>
                                <%--<p class="hidden-lg hidden-md">--%>
                                    <%--Notifications--%>
                                    <%--<b class="caret"></b>--%>
                                <%--</p>--%>
                            <%--</a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li>--%>
                                    <%--<a href="#">Mike John responded to your email</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">You have 5 new tasks</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">You're now friend with Andrew</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Another Notification</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a href="#">Another One</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">--%>
                                <%--<i class="material-icons">person</i>--%>
                                <%--<p class="hidden-lg hidden-md">Profile</p>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                    <%--<form class="navbar-form navbar-right" role="search">--%>
                        <%--<div class="form-group form-search is-empty">--%>
                            <%--<input type="text" class="form-control" placeholder="Search">--%>
                            <%--<span class="material-input"></span>--%>
                        <%--</div>--%>
                        <%--<button type="submit" class="btn btn-white btn-round btn-just-icon">--%>
                            <%--<i class="material-icons">search</i>--%>
                            <%--<div class="ripple-container"></div>--%>
                        <%--</button>--%>
                    <%--</form>--%>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->


                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="green" id="wizardProfile">
                            <link rel="stylesheet" href="style.css">
                            <script src="http://cdn.peerjs.com/0.3/peer.min.js"></script>
                            <script type="text/javascript"
                                    src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
                            <script>
                                navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
                                // PeerJS object
                                var peer = new Peer({key: 'ezdeolfd1x7p66r', debug: 3});
                                peer.on('open', function () {
                                    $('#my-id').text(peer.id);

                                    $('#hiddenFieldForPID').val(peer.id);


                                    document.getElementById("btnenablemepls").disabled = false;
                                    document.getElementById('btnenablemepls').textContent = "Start Call Now";
                                });</script>

                            <%--pid js to jsp--%>


                            <%--<div class="pure-g">--%>

                            <!-- Video area -->
                            <%--<div class="pure-u-2-3" id="video-container">--%>

                            <%--<video id="their-video" autoplay></video>--%>
                            <%--<video id="my-video" muted="true" autoplay></video>--%>
                            <%--</div>--%>

                            <!-- Steps -->
                            <%--<div class="pure-u-1-3">--%>
                            <%--<h2>Web Calling</h2>--%>

                            <!-- Get local audio/video stream -->
                            <%--<div id="step1">--%>
                            <%--<p>Please click `allow` on the top of the screen so we can access your webcam and microphone for calls.</p>--%>
                            <%--<div id="step1-error">--%>
                            <%--<p>Failed to access the webcam and microphone. Make sure to run this demo on an http server and click--%>
                            <%--allow when asked for permission by the browser.</p>--%>
                            <%--<a href="#" class="pure-button pure-button-error" id="step1-retry">Try again</a>--%>
                            <%--</div>--%>
                            <%--</div>--%>

                            <!-- Make calls to others -->
                            <%--<div id="step2">--%>

                            <%--<form id="RegisterValidation" action="" method="">--%>
                            <%--<div class="card-header card-header-icon" data-background-color="rose">--%>
                            <%--<i class="material-icons">mail_outline</i>--%>
                            <%--</div>--%>
                            <%--<div class="card-content">--%>
                            <%--<h4 class="card-title">Video Call</h4>--%>
                            <%--<div class="form-group label-floating">--%>
                            <%--<label class="control-label">--%>
                            <%--Your ID:--%>
                            <%--<small>*</small>--%>
                            <%--</label>--%>
                            <%--<input class="form-control" name="email" type="email" required="true" />--%>
                            <%--</div>--%>


                            <%--<div class="form-footer text-center">--%>

                            <%--<button type="submit" class="btn btn-rose btn-fill">Register</button>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</form>--%>


                            <center><h1>Welcome, <%=session.getAttribute("firstName")%>
                            </h1>
                                <h2>Your Username Is: <%=session.getAttribute("username")%>
                                </h2>
                                <form method="post" action="/patientPIDSav">


                                    <input id="hiddenFieldForPID" name="hiddenFieldForPID" hidden/>
                                    <button id="btnenablemepls" class="btn btn-rose btn-fill" type="submit" disabled>
                                        Getting ready...
                                    </button>
                                </form>

                            </center>
                            <%--&lt;%&ndash;<p>Share this id with others so they can call you.</p>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<h3>Make a call</h3>&ndash;%&gt;--%>
                            <%--<div class="pure-form">--%>
                            <%--&lt;%&ndash;<input type="text" placeholder="Call user id..." id="callto-id">&ndash;%&gt;--%>
                            <%--<a href="#" class="pure-button pure-button-success" id="make-call">Call</a>--%>
                            <%--</div>--%>
                            <%--</div>--%>

                            <!-- Call in progress -->
                            <%--<div id="step3">--%>
                            <%--<p>Currently in call with <span id="their-id">...</span></p>--%>
                            <%--<p><a href="#" class="pure-button pure-button-error" id="end-call">End call</a></p>--%>
                            <%--</div>--%>
                        </div>
                    </div>


                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br> <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>


                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>


                </div>
            </div>
            <!-- wizard container -->
        </div>
    </div>
</div>
<%--<footer class="footer">--%>
    <%--<div class="container-fluid">--%>
        <%--<nav class="pull-left">--%>
            <%--<ul>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--Home--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--Company--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--Portfolio--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--Blog--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</nav>--%>
        <%--<p class="copyright pull-right">--%>
            <%--&copy;--%>
            <%--<script>--%>
                <%--document.write(new Date().getFullYear())--%>
            <%--</script>--%>
            <%--<a href="http://www.creative-tim.com">Woodlands Integrated Health Campus</a>, made with love by--%>
            <%--Fanclub--%>
        <%--</p>--%>
    <%--</div>--%>
<%--</footer>--%>
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
</body>
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
