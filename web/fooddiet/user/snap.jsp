<%--
  Created by IntelliJ IDEA.
  User: Ying
  Date: 14/12/2016
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="../../assets/img/favicon.png"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Woodlands Integrated Health Campus | Food Diet | Snap</title>
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
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!--  Material Dashboard CSS    -->
    <link href="../../assets/css/material-dashboard2.css" rel="stylesheet"/>
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../../assets/css/demo2.css" rel="stylesheet"/>
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    <script type="text/javascript" src="key.js"></script>
    <script type="text/javascript" src="main.js"></script>

    <style type="text/css">


        #labeldetect {
            padding:2em;
            border: 1px solid blue;
        }

        img {
            position: relative;
            float: left;
            width:  100px;
            height: 100px;
            background-position: 50% 50%;
            background-repeat:   no-repeat;
            background-size:     cover;

        }

        a {
            -webkit-transition: all 150ms ease;
            -moz-transition: all 150ms ease;
            -ms-transition: all 150ms ease;
            -o-transition: all 150ms ease;
            transition: all 150ms ease;
        }

        a:hover {
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; /* IE 8 */
            filter: alpha(opacity=50); /* IE7 */
            opacity: 0.6;
            text-decoration: none;
        }



        body{
            border-top:0;
            background:#c4e17f;
            background-image:-webkit-linear-gradient(left,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4);background-image:-moz-linear-gradient(left,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4);background-image:-o-linear-gradient(left,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4);background-image:linear-gradient(to right,#c4e17f,#c4e17f 12.5%,#f7fdca 12.5%,#f7fdca 25%,#fecf71 25%,#fecf71 37.5%,#f0776c 37.5%,#f0776c 50%,#db9dbe 50%,#db9dbe 62.5%,#c49cde 62.5%,#c49cde 75%,#669ae1 75%,#669ae1 87.5%,#62c2e4 87.5%,#62c2e4)
        }

        .thumbnails li> .fff .caption {
            background:#fff !important;
            padding:10px
        }

        .thumbnails {
            height: 500px;
            /*width: 400px;*/
            overflow: hidden;
        }
        .thumbnails img {
            height: 400px;
            width: 250px;
        }

        /* Page Header */
        .page-header {
            background: #f9f9f9;
            margin: -30px -40px 40px;
            padding: 20px 40px;
            border-top: 4px solid #ccc;
            color: #999;
            text-transform: uppercase;
        }

        .page-header h3 {
            line-height: 0.88rem;
            color: #000;
        }

        ul.thumbnails {
            margin-bottom: 0px;
        }



        /* Thumbnail Box */
        .caption h4 {
            color: #444;
        }

        .caption p {
            color: #999;
        }



        /* Carousel Control */
        .control-box {
            text-align: right;
            width: 100%;
        }
        .carousel-control{
            background: #666;
            border: 0px;
            border-radius: 0px;
            display: inline-block;
            font-size: 34px;
            font-weight: 200;
            line-height: 18px;
            opacity: 0.5;
            padding: 4px 10px 0px;
            position: static;
            height: 30px;
            width: 15px;
        }



        /* Mobile Only */
        @media (max-width: 767px) {
            .page-header, .control-box {
                text-align: center;
            }
        }
        @media (max-width: 479px) {
            .caption {
                word-break: break-all;
            }
        }


        li { list-style-type:none;}

        ::selection { background: #ff5e99; color: #FFFFFF; text-shadow: 0; }
        ::-moz-selection { background: #ff5e99; color: #FFFFFF; }


    </style>
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
    <div class="sidebar" data-active-color="green" data-background-color="black"
         data-image="../../assets/img/sidebar-1.jpg">
        <!--
    Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
    Tip 2: you can also add an image using data-image tag
    Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->
        <div class="logo">
            <a href="../patientFrontPage.jsp" class="simple-text">
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
                    <img src="../../assets/img/faces/marc.jpg"/>
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        <%=session.getAttribute("firstName")%>
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="myprofile.jsp">My Profile</a>
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

                <li class="active">
                    <a data-toggle="collapse" href="#pagesExamples" aria-expanded="true">
                        <i class="material-icons">content_paste</i>
                        <p>Diet Planner
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="pagesExamples">
                        <ul class="nav">
                            <li class="active">
                                <a href="#">Snap</a>
                            </li>
                            <li>
                                <a href="foodcontent.jsp">Food Content</a>
                            </li>

                        </ul>
                    </div>
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
                    <a class="navbar-brand" href="#"> Snap </a>
                </div>

            </div>

        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-text" data-background-color="orange">
                    <h4 class="card-title">Food Suggestion:</h4>
                </div>
                <div class="card-content">
                    <div class="row">

                    <div class="carousel slide" id="myCarousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <ul class="thumbnails">
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/chicky.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Chicken Rice</h4>

                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/apple.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Apple</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/pasta.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Pasta</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/cheesecake.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Cheesecake</h4>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div><!-- /Slide1 -->
                            <div class="item">
                                <ul class="thumbnails">
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/noodle.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Noodle</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/tart.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Tarts</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/waffle.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Waffle</h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="../../assets/img/icecream.jpg"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Ice Cream</h4>
                                            </div>
                                        </div>
                                    </li>
                                </ul>

                            </div>
                            <nav>
                                <ul class="control-box pager">
                                    <li><a data-slide="prev" href="#myCarousel" class=""><i class="material-icons">chevron_left</i></a></li>
                                    <li><a data-slide="next" href="#myCarousel" class=""><i class="material-icons">chevron_right</i></a></li>
                                </ul>
                            </nav><!-- /Slide2 -->
                       <!--     <div class="item">
                                <ul class="thumbnails">
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="http://placehold.it/360x240"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Praesent commodo</h4>
                                                <p>Nullam Condimentum Nibh Etiam Sem</p>
                                                <a class="btn btn-mini" href="#">» Read More</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="http://placehold.it/360x240"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Praesent commodo</h4>
                                                <p>Nullam Condimentum Nibh Etiam Sem</p>
                                                <a class="btn btn-mini" href="#">» Read More</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="http://placehold.it/360x240"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Praesent commodo</h4>
                                                <p>Nullam Condimentum Nibh Etiam Sem</p>
                                                <a class="btn btn-mini" href="#">» Read More</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-sm-3">
                                        <div class="fff">
                                            <div class="thumbnail">
                                                <a href="#"><img src="http://placehold.it/360x240"
                                                                 alt=""></a>
                                            </div>
                                            <div class="caption">
                                                <h4>Praesent commodo</h4>
                                                <p>Nullam Condimentum Nibh Etiam Sem</p>
                                                <a class="btn btn-mini" href="#">» Read More</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div><!-- /Slide3 -->

                        </div>

                        <nav>
                            <h2> Or take a picture! </h2>
                            <form id="fileform" action="">

                                <input type="file" accept="image/*" id="capture" name="fileField" onchange="readURL(this)" capture><br /><br />
                             <!--   <input name="enterFood" type="text"> -->
                                <input type="submit" name="submit" value="Submit">
                            </form>

                        </nav>
                        </div>
                        <div id="results2"></div>

                    </div>
                </div>
            </div>
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
                                    web
                                </p>
                            </div>
                        </footer>
                    </div>
                </div>

                </div>
<script>
    $(document).ready(function() {
        $('.carousel').carousel({
            interval: 6000
        })
    });
</script>
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
            errorPlacement: function (error, element) {
                $(element).parent('div').addClass('has-error');
            }
        });
    }

    $(document).ready(function () {
        setFormValidation('#RegisterValidation');
        setFormValidation('#TypeValidation');
        setFormValidation('#LoginValidation');
        setFormValidation('#RangeValidation');

    });
</script>

</html>
