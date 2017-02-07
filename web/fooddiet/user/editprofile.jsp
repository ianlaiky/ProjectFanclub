<%@ page import="foodDiet.UserDAO" %>
<%@ page import="foodDiet.User" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.util.Properties" %><%--
  Created by IntelliJ IDEA.
  User: Ying
  Date: 14/12/2016
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../../assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Woodlands Integrated Health Campus | Food Diet | Profile</title>
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
<%
    UserDAO db = new UserDAO();
    User user = db.retrieveUserByUsername(session.getAttribute("firstName").toString());
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
        <div class="sidebar-wrapper">
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
                            <li>
                                <a href="myprofile.jsp">My Profile</a>
                            </li>
                            <li class="active">
                                <a href="#">Edit Profile</a>
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
                    <a href="../dashboard.jsp">
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
    <div class="main-panel">
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
                    <a class="navbar-brand" href="#"> Edit Profile </a>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <form id="TypeValidation" class="form-horizontal" action="/updateUser" method="GET">
                                <div class="card-header card-header-text" data-background-color="rose">
                                    <h4 class="card-title">Profile</h4>
                                </div>
                                <div class="card-content">
                                    <div class="row">
                                        <label class="col-sm-2 label-on-left">Name</label>
                                        <div class="col-sm-7">
                                            <div class="form-group label-floating">
                                                <label class="control-label"></label>
                                                <input class="form-control" type="text" name="name" value="<%=user.getUname()%>" required="true" disabled/>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <label class="col-sm-2 label-on-left">Age</label>
                                        <div class="col-sm-7">
                                            <div class="form-group label-floating">
                                                <label class="control-label"></label>
                                                <input class="form-control" type="text" name="age" value="<%=user.getAge()%>" number="true" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-2 label-on-left">Physical Activity Intensity</label>
                                        <div class="col-lg-7 col-md-6 col-sm-3">

                                            <select name="intensity" class="selectpicker" id="intense" data-style="select-with-transition" title="Choose Physical Activity Intensity" data-size="4" >
                                                <option disabled> Choose an intensity best suit you</option>
                                                <option value="sedentary">Sedentary </option>
                                                <option value="moderate">Moderately Active</option>
                                                <option value="active">Active</option>
                                            </select>
                                            <%
                                                System.out.println(user.getIntensity());
                                            %>

                                        </div>
                                    </div>
                                </div>
                                <br>
                                <br>
                                <hr>
                                <br>
                                <div class="card-header card-header-text" data-background-color="orange">
                                    <h4 class="card-title">Measurements</h4>
                                </div>
                                <div class="card-content">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <label class="col-sm-offset-2 label-on-left">Height</label>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="col-xs-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"></label>
                                                    <input class="form-control" type="text" name="height" value="<%=user.getHeight()%>" number="true" />
                                                </div>
                                            </div>
                                            <label class="col-xs-2 label-on-right">
                                                cm
                                            </label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <label class="col-sm-offset-2 label-on-left">Weight</label>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="col-xs-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"></label>
                                                    <input class="form-control" type="text" name="weight" value="<%=user.getWeight()%>" number="true" />
                                                </div>
                                            </div>
                                            <label class="col-xs-2 label-on-right">
                                                kg
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-center">
                                    <button type="submit" class="btn btn-rose btn-fill">Save</button>
                                </div>

                            </form>

                        </div>
                    </div>
                    <!--  <div class="col-md-12">
                          <div class="card">
                              <form id="RangeValidation" class="form-horizontal" action="" method="">
                                  <div class="card-header card-header-text" data-background-color="rose">
                                      <h4 class="card-title">Range Validation</h4>
                                  </div>
                                  <div class="card-content">
                                      <div class="row">
                                          <label class="col-sm-2 label-on-left">Min Length</label>
                                          <div class="col-sm-7">
                                              <div class="form-group label-floating">
                                                  <label class="control-label"></label>
                                                  <input class="form-control" type="text" name="min_length" minLength="5" />
                                              </div>
                                          </div>
                                          <label class="col-sm-3 label-on-right">
                                              <code>minLength="5"</code>
                                          </label>
                                      </div>
                                      <div class="row">
                                          <label class="col-sm-2 label-on-left">Max Length</label>
                                          <div class="col-sm-7">
                                              <div class="form-group label-floating">
                                                  <label class="control-label"></label>
                                                  <input class="form-control" type="text" name="max_length" maxLength="5" />
                                              </div>
                                          </div>
                                          <label class="col-sm-3 label-on-right">
                                              <code>maxLength="5"</code>
                                          </label>
                                      </div>
                                      <div class="row">
                                          <label class="col-sm-2 label-on-left">Range</label>
                                          <div class="col-sm-7">
                                              <div class="form-group label-floating">
                                                  <label class="control-label"></label>
                                                  <input class="form-control" type="text" name="range" range="[6,10]" />
                                              </div>
                                          </div>
                                          <label class="col-sm-3 label-on-right">
                                              <code>range="[6,10]"</code>
                                          </label>
                                      </div>
                                      <div class="row">
                                          <label class="col-sm-2 label-on-left">Min Value</label>
                                          <div class="col-sm-7">
                                              <div class="form-group label-floating">
                                                  <label class="control-label"></label>
                                                  <input class="form-control" type="text" name="min" min="6" />
                                              </div>
                                          </div>
                                          <label class="col-sm-3 label-on-right">
                                              <code>min="6"</code>
                                          </label>
                                      </div>
                                      <div class="row">
                                          <label class="col-sm-2 label-on-left">Max Value</label>
                                          <div class="col-sm-7">
                                              <div class="form-group label-floating">
                                                  <label class="control-label"></label>
                                                  <input class="form-control" type="text" name="max" max="6" />
                                              </div>
                                          </div>
                                          <label class="col-sm-3 label-on-right">
                                              <code>max="6"</code>
                                          </label>
                                      </div>
                                  </div>
                                  <div class="card-footer text-center">
                                      <button type="submit" class="btn btn-rose btn-fill">Validate Inputs</button>
                                  </div>
                              </form>
                          </div> -->
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Blog
                            </a>
                        </li>
                    </ul>
                </nav>
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
<div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="#" data-toggle="dropdown">
            <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
            <li class="header-title"> Sidebar Filters</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger active-color">
                    <div class="badge-colors text-center">
                        <span class="badge filter badge-purple" data-color="purple"></span>
                        <span class="badge filter badge-blue" data-color="blue"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                        <span class="badge filter badge-rose active" data-color="rose"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">Sidebar Background</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="text-center">
                        <span class="badge filter badge-white" data-color="white"></span>
                        <span class="badge filter badge-black active" data-color="black"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>Sidebar Mini</p>
                    <div class="togglebutton switch-sidebar-mini">
                        <label>
                            <input type="checkbox" unchecked="">
                        </label>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>Sidebar Image</p>
                    <div class="togglebutton switch-sidebar-image">
                        <label>
                            <input type="checkbox" checked="">
                        </label>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">Images</li>
            <li class="active">
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-1.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-2.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-3.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-4.jpg" alt="" />
                </a>
            </li>
            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-rose btn-block">Buy Now</a>
                </div>
                <div class="">
                    <a href="http://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-info btn-block">Get Free Demo</a>
                </div>
            </li>
            <li class="header-title">Thank you for 95 shares!</li>
            <li class="button-container">
                <button id="twitter" class="btn btn-social btn-twitter btn-round"><i class="fa fa-twitter"></i> &middot; 45</button>
                <button id="facebook" class="btn btn-social btn-facebook btn-round"><i class="fa fa-facebook-square"> &middot;</i>50</button>
            </li>
        </ul>
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
    function setFormValidation(id) {
        $(id).validate({
            errorPlacement: function(error, element) {
                $(element).parent('div').addClass('has-error');
            }
        });
    }
    $(document).ready(function() {
        /*   foo();
         function foo(){
         var value =
         alert(value);
         } */
        $("#intense").val("<%=user.getIntensity()%>").change();
        //alert($("#intense").val());
        setFormValidation('#RegisterValidation');
        setFormValidation('#TypeValidation');
        setFormValidation('#LoginValidation');
        setFormValidation('#RangeValidation');
    });
</script>

</html>