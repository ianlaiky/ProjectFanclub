<%--
  Created by IntelliJ IDEA.
  User: Ying
  Date: 11/12/2016
  Time: 4:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../../assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Woodlands Integrated Health Campus | Food Diet | Building Up Profile</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Canonical SEO -->
    <link rel="canonical" href="http://www.creative-tim.com/product/material-dashboard-pro" />
    <!--  Social tags      -->
    <meta name="keywords" content="material dashboard, bootstrap material admin, bootstrap material dashboard, material design admin, material design, creative tim, html dashboard, html css dashboard, web dashboard, freebie, free bootstrap dashboard, css3 dashboard, bootstrap admin, bootstrap dashboard, frontend, responsive bootstrap dashboard, premiu material design admin">
    <meta name="description" content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template">
    <meta itemprop="description" content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
    <meta itemprop="image" content="http://s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg">
    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@creativetim">
    <meta name="twitter:title" content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template">
    <meta name="twitter:description" content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design.">
    <meta name="twitter:creator" content="@creativetim">
    <meta name="twitter:image" content="http://s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg">
    <!-- Open Graph data -->
    <meta property="fb:app_id" content="655968634437471">
    <meta property="og:title" content="Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://www.creative-tim.com/product/material-dashboard-pro" />
    <meta property="og:image" content="http://s3.amazonaws.com/creativetim_bucket/products/51/opt_mdp_thumbnail.jpg" />
    <meta property="og:description" content="Material Dashboard PRO is a Premium Material Bootstrap Admin with a fresh, new design inspired by Google's Material Design." />
    <meta property="og:site_name" content="Creative Tim" />
    <!-- Bootstrap core CSS     -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="../../assets/css/material-dashboard2.css" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../../assets/css/demo2.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
</head>

<body>
<%
    if(session.getAttribute("signInPatient")==null){
        response.sendRedirect("../../errorPage.jsp");
    }else{
        if(session.getAttribute("signInPatient").equals("false")){
            response.sendRedirect("../../errorPage.jsp");
        }

    }

%>
<div class="wrapper">
    <div class="sidebar" data-active-color="green" data-background-color="black" data-image="../../assets/img/sidebar-1.jpg">
        <!--
    Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
    Tip 2: you can also add an image using data-image tag
    Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->
        <div class="logo">
            <a href="http://www.creative-tim.com" class="simple-text">
                Food Diet
            </a>
        </div>
        <div class="logo logo-mini">
            <a href="http://www.creative-tim.com" class="simple-text">
                FD
            </a>
        </div>
        <div class="sidebar-wrapper ps-container ps-theme-default ps-active-x" data-ps-id="27535860-4b1b-c8e5-ec90-4de4d32f70a0">
            <div class="user">
                <div class="photo">
                    <img src="../../assets/img/faces/marc.jpg" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed" aria-expanded="true">
                        <%=session.getAttribute("firstName")%>
                        <b class="caret"></b>
                    </a>
                    <div class="collapse in" id="collapseExample">
                        <ul class="nav">
                            <li class="active">
                                <a href="#">My Profile</a>
                            </li>
                            <li>
                                <a href="editprofile.jsp">Edit Profile</a>
                            </li>
                            <li>
                                <a href="dailyintake.jsp">Daily Intake</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
            <ul class="nav">
                <li>
                    <a href="../index.jsp">
                        <i class="material-icons">dashboard</i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a data-toggle="collapse" href="#pagesExamples">
                        <i class="material-icons">content_paste</i>
                        <p>Diet Planner
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="pagesExamples">
                        <ul class="nav">
                            <li>
                                <a href="snap.jsp">Snap</a>
                            </li>
                            <li>
                                <a href="foodcontent.jsp">Food Content</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="../../logout.jsp">
                        <i class="material-icons">apps</i>
                        <p>About</p>
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

        <div class="content">
            <div class="container-fluid">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="rose" id="wizardProfile">
                            <form action="/user" method="get">
                                <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
                                <div class="wizard-header">
                                    <h3 class="wizard-title">
                                        Build Your Profile
                                    </h3>
                                    <h5>This information will let us know more about you.</h5>
                                </div>
                                <div class="wizard-navigation">
                                    <ul>
                                        <li>
                                            <a href="#about" data-toggle="tab">About</a>
                                        </li>
                                        <li>
                                            <a href="#account" data-toggle="tab">Fitness</a>
                                        </li>
                                        <li>
                                            <a href="#address" data-toggle="tab">BMI</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane" id="about">
                                        <div class="row">
                                            <h4 class="info-text"> Let's start with the basic information </h4>
                                            <div class="col-sm-4 col-sm-offset-1">
                                                <div class="picture-container">
                                                    <div class="picture">
                                                        <img src="../../assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title="" />
                                                        <input type="file" id="wizard-picture">
                                                    </div>
                                                    <h6>Choose Picture</h6>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">face</i>
                                                        </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Name
                                                        </label>
                                                        <input name="name" type="text" class="form-control" value=" <%=session.getAttribute("firstName")%>">
                                                    </div>
                                                </div>
                                                <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">mood</i>
                                                        </span>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Age
                                                        </label>
                                                        <input name="age" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">person</i>
                                                        </span>
                                                    <div>
                                                        <label class="control-label">Gender
                                                        </label>
                                                        <div class="radio">
                                                        <label>
                                                            <input type="radio" name="gender" value="male"> Male
                                                        </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="gender" value="female"> Female
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="tab-pane" id="account">
                                        <h4 class="info-text"> What is your physical activity intensity?  </h4>
                                        <div class="row">
                                            <div class="col-lg-10 col-lg-offset-1">
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-radio">
                                                        <input type="radio" name="intensity" value="sedentary">
                                                        <div class="icon">
                                                            <i class="fa fa-meh-o fa-5x"></i>
                                                        </div>
                                                        <h6>Sedentary</h6>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-radio">
                                                        <input type="radio" name="intensity" value="moderate">
                                                        <div class="icon">
                                                            <i class="fa fa-heart"></i>
                                                        </div>
                                                        <h6>Moderately Active</h6>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-radio">
                                                        <input type="radio" name="intensity" value="active">
                                                        <div class="icon">
                                                            <i class="fa fa-bicycle"></i>
                                                        </div>
                                                        <h6>Active</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="address">
                                        <div class="row">
                                            <div class="col-sm-12 ">
                                                <h4 class="info-text"> Your measurements will help us in more accurate calculation </h4>
                                            </div>
                                            <div class="col-sm-7 col-sm-offset-2">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Height</label>
                                                    <input type="text" name="height" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-sm-7 col-sm-offset-2">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Weight</label>
                                                    <input type="text" name="weight" class="form-control">
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-fill btn-rose btn-wd' name='next' value='Next' />
                                        <input type='submit' class='btn btn-finish btn-fill btn-rose btn-wd' name='finish' value='Finish' />
                                    </div>
                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- wizard container -->
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">

                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="http://www.creative-tim.com">Woodlands Integrated Health Campus</a>, made with love by Fanclub
                </p>
            </div>
        </footer>
    </div>
</div>

</div>

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
    $().ready(function() {
        demo.initMaterialWizard();
    });
</script>

</html>
