<%--
  Created by IntelliJ IDEA.
  User: Ying
  Date: 11/12/2016
  Time: 4:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>


    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="../assets/img/favicon.png"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <title>Vision API</title>
    <%@ page import="foodOrder.*" %>


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

    <style type="text/css">

        div.foodOrderContainer {
            display: none;
        }

        div.item {
            vertical-align: top;
            display: inline-block;
            text-align: left;
            /* The width of the container also implies margin around the images. */
            width: 240px;
            font-family: "Fira Code Medium";
            font-size: 16px;
            font-weight: bold;

        }

        div.item2 {
            vertical-align: top;
            display: inline-block;
            text-align: left;
            /*height: 100px;*/
            /* The width of the container also implies margin around the images. */
            width: 150px;

            font-family: "Fira Code Medium";
            font-size: 16px;
            font-weight: bold;

        }

        img {

            /*width: 240px;*/
            /*height: 140px;*/
            /*background-color: grey;*/

        }

        .caption {

            display: inline-block;
            width: 170px;

        }

        .btn-circle {
            width: 30px;
            height: 30px;
            text-align: center;
            padding: 6px 0;
            font-size: 12px;
            line-height: 1.428571429;
            border-radius: 15px;
        }


    </style>
    <script>


        //        $( document ).ready(function() {
        //            $("table#orderlisttable tr").each(function() {
        //                var arrayOfThisRow = [];
        //                var tableData = $(this).find('td');
        //                if (tableData.length > 0) {
        //                    tableData.each(function() { arrayOfThisRow.push($(this).text()); });
        //                    myTableArray.push(arrayOfThisRow);
        //                }
        //            });
        //        });

        jQuery(function () {
            $("#btnSubmitFood").click(function (e) {

                var myTableArray = [];

                $("table#orderlisttable tr").each(function () {
                    var arrayOfThisRow = [];
                    var tableData = $(this).find('td');
                    if (tableData.length > 0) {
                        tableData.each(function () {
                            arrayOfThisRow.push($(this).text());
                        });
                        myTableArray.push(arrayOfThisRow);
                    }

                });

                myTableArray.toString();
                $("#orders").val(myTableArray);
            });
        });


        jQuery(function () {
            $("#btnFPorridge").click(function (e) {
                e.preventDefault();
                $("#foodFP").val("Fish Porridge");
                $("#orderlisttable").append("<tr><td>Fish Porridge</td></tr>");


            });
        });

        jQuery(function () {
            $("#btndeletelist").click(function (e) {
                e.preventDefault();
                $("#orderlisttable > tbody").empty();

            });
        });

        jQuery(function () {
            $("#btnMilk").click(function (e) {
                e.preventDefault();
                $("#foodMilk").val("Milk");
                $("#orderlisttable").append("<tr><td>Milk</td></tr>");

            });
        });

        jQuery(function () {
            $("#btnOJ").click(function (e) {
                e.preventDefault();
                $("#foodOJ").val("Orange Juice");
                $("#orderlisttable").append("<tr><td>Orange Juice</td></tr>");

            });
        });

        jQuery(function () {
            $("#btnWater").click(function (e) {
                e.preventDefault();
                $("#foodWater").val("Water");
                $("#orderlisttable").append("<tr><td>Water</td></tr>");

            });
        });

        jQuery(function () {
            $("#btnOrange").click(function (e) {
                e.preventDefault();
                $("#foodOrange").val("Orange");
                $("#orderlisttable").append("<tr><td>Orange</td></tr>");

            });
        });


        jQuery(function () {
            $("#btnCNoodles").click(function (e) {
                e.preventDefault();
                $("#foodCN").val("Chicken Noodles");
                $("#orderlisttable").append("<tr><td>Chicken Noodles</td></tr>");

            });
        });
        jQuery(function () {
            $("#btnApple").click(function (e) {
                e.preventDefault();
                $("#foodApple").val("Apple");
                $("#orderlisttable").append("<tr><td>Apple</td></tr>");

            });
        });

        jQuery(function () {
            $("#btnPear").click(function (e) {
                e.preventDefault();
                $("#foodPear").val("Pear");
                $("#orderlisttable").append("<tr><td>Pear</td></tr>");

            });
        });

        jQuery(function () {
            $("#btnCornflakes").click(function (e) {
                e.preventDefault();
                $("#foodCornflake").val("Cornflakes");
                $("#orderlisttable").append("<tr><td>Cornflakes</td></tr>");

            });
        });
        jQuery(function () {
            $("#btnETSandwich").click(function (e) {
                e.preventDefault();
                $("#foodEggTomatoSw").val("Egg&Tomato Sandwich");
                $("#orderlisttable").append("<tr><td>Egg&Tomato Sandwich</td></tr>");

            });
        });
        jQuery(function () {
            $("#btnKayaBread").click(function (e) {
                e.preventDefault();
                $("#foodKayaBread").val("Kaya Bread");
                $("#orderlisttable").append("<tr><td>Kaya Bread</td></tr>");

            });
        });
        jQuery(function () {
            $("#btnSausagesEgg").click(function (e) {
                e.preventDefault();
                $("#foodEggSausage").val("Fried Egg&Sausages");
                $("#orderlisttable").append("<tr><td>Fried Egg&Sausages</td></tr>");

            });
        });
        jQuery(function () {
            $("#btnOatmeal").click(function (e) {
                e.preventDefault();
                $("#foodOatmeal").val("Oatmeal");
                $("#orderlisttable").append("<tr><td>Oatmeal</td></tr>");

            });
        });
    </script>
</head>

<body>

<%
    if (session.getAttribute("signInPatient") == null) {
        response.sendRedirect("../errorPage.jsp");
    } else {
        if (session.getAttribute("signInPatient").equals("false")) {
            response.sendRedirect("../errorPage.jsp");
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
            <a href="../patientFrontPage.jsp"  class="simple-text">
                Food Ordering
            </a>
        </div>
        <div class="logo logo-mini">
            <a href="http://www.creative-tim.com" class="simple-text">
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
                        <%= session.getAttribute("firstName")%>
                        <%--<b class="caret"></b>--%>
                    </a>

                </div>
            </div>
            <ul class="nav">

                <li>
                    <a href="#">
                        <i class="material-icons">content_paste</i>
                        <p>Food Ordering</p>
                    </a>
                </li>

                <li>
                    <a href="../foodorder/dietrecommend.jsp">
                        <i class="material-icons">timeline</i>
                        <p>Diet Recommendation</p>
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
                    <a class="navbar-brand" href="#"> </a>
                </div>

            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="col-sm-8 col-sm-offset-2">
                    <%--Insert all the awesome body content here--%>


                    <div class="card card-nav-tabs">
                        <div class="card-header" data-background-color="purple">
                            <div class="nav-tabs-navigation">
                                <div class="nav-tabs-wrapper">
                                    <span class="nav-tabs-title">Menu:</span>
                                    <ul class="nav nav-tabs nav-justified" data-tabs="tabs">
                                        <li class="active">
                                            <a href="#foodtab" data-toggle="tab">
                                                <i class="material-icons">restaurant_menu</i>
                                                Bugs
                                                <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#drinkstab" data-toggle="tab">
                                                <i class="material-icons">local_bar</i>
                                                Drinks
                                                <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#fruitstab" data-toggle="tab">
                                                <i class="material-icons">restaurant_menu</i>
                                                Fruits
                                                <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="card-content">
                            <div class="tab-content">
                                <div class="tab-pane active" id="foodtab">
                                    <h3>Food</h3>
                                    <form action="/foodservlet" action="get">
                                        <%--food values container --%>
                                        <div class="foodOrderContainer">
                                            <input type="text" id="foodFP" name="food"/>
                                            <input type="text" id="foodCN" name="food"/>
                                            <input type="text" id="foodEggTomatoSw" name="food"/>
                                            <input type="text" id="foodCornflake" name="food"/>
                                            <input type="text" id="foodEggSausage" name="food"/>
                                            <input type="text" id="foodKayaBread" name="food"/>
                                            <input type="text" id="foodOatmeal" name="food"/>
                                        </div>
                                        <%-- end of food values container--%>


                                        <div class="item">
                                            <img src="images/fishporridge.jpg" class="img-circle"
                                                 style="width: 240px;height:140px;">
                                            <span class="caption">
                                                     Fish porridge
                                                    </span>
                                            <button type="button" id="btnFPorridge"
                                                    class="btn btn-primary btn-circle hoverable"
                                                    value="defaultvalue"><i
                                                    class="glyphicon glyphicon-plus"></i></button>

                                        </div>
                                        <div class="item">
                                            <img src="images/chickennoodle.jpg" class="img-circle"
                                                 alt="Cinque Terre" style="width: 240px;height:140px;">
                                            <span class="caption">
                                                        Chicken Noodles
                                                    </span>
                                            <button type="button" id="btnCNoodles"
                                                    class="btn btn-primary btn-circle"><i
                                                    class="glyphicon glyphicon-plus"></i></button>
                                        </div>

                                        <div class="item">
                                            <img src="images/eggtomatosandwich.JPG" class="img-circle"
                                                 alt="Cinque Terre" style="width: 240px;height:140px;">
                                            <span class="caption">
                                                        Egg&Tomato Sandwich
                                                    </span>
                                            <button type="button" id="btnETSandwich"
                                                    class="btn btn-primary btn-circle"><i
                                                    class="glyphicon glyphicon-plus"></i></button>
                                        </div>

                                        <div class="item">
                                            <img src="images/cornflake.jpg" class="img-circle"
                                                 alt="Cinque Terre" style="width: 240px;height:140px;">
                                            <span class="caption">
                                                        Cornflakes
                                                    </span>
                                            <button type="button" id="btnCornflakes"
                                                    class="btn btn-primary btn-circle"><i
                                                    class="glyphicon glyphicon-plus"></i></button>
                                        </div>
                                        <div class="item">
                                            <img src="images/friedeggsausage.jpg" class="img-circle"
                                                 alt="friedeggsausage" style="width: 240px;height:140px;">
                                            <span class="caption">Sausages&Egg
                                                    </span>
                                            <button type="button" id="btnSausagesEgg"
                                                    class="btn btn-primary btn-circle"><i
                                                    class="glyphicon glyphicon-plus"></i></button>
                                        </div>
                                        <div class="item">
                                            <img src="images/kayabread.jpg" class="img-circle"
                                                 alt="kaya bread" style="width: 240px;height:140px;">
                                            <span class="caption">Kaya Bread
                                                    </span>
                                            <button type="button" id="btnKayaBread"
                                                    class="btn btn-primary btn-circle"><i
                                                    class="glyphicon glyphicon-plus"></i></button>
                                        </div>
                                        <div class="item">
                                            <img src="images/oatmeal.jpg" class="img-circle" alt="Cinque Terre"
                                                 style="width: 240px;height:140px;">
                                            <span class="caption">Oatmeal
                                                    </span>
                                            <button type="button" id="btnOatmeal"
                                                    class="btn btn-primary btn-circle"><i
                                                    class="glyphicon glyphicon-plus"></i></button>
                                        </div>


                                </div>
                                <div class="tab-pane" id="drinkstab">
                                    <%--start of drinks tab--%>
                                    <div class="foodOrderContainer">
                                        <input type="text" id="foodMilk" name="food"/>
                                        <input type="text" id="foodOJ" name="food"/>
                                        <input type="text" id="foodWater" name="food"/>
                                    </div>

                                    <div class="item">
                                        <img src="images/milk.jpg" class="img-circle" alt="milk"
                                             style="width: 240px;height:140px;">
                                        <span class="caption">Milk
                                                    </span>
                                        <button type="button" id="btnMilk"
                                                class="btn btn-primary btn-circle"><i
                                                class="glyphicon glyphicon-plus"></i></button>
                                    </div>

                                    <div class="item">
                                        <img src="images/orangejuice.jpg" class="img-circle" alt="orange juice"
                                             style="width: 240px;height:140px;">
                                        <span class="caption">Orange Juice
                                                    </span>
                                        <button type="button" id="btnOJ"
                                                class="btn btn-primary btn-circle"><i
                                                class="glyphicon glyphicon-plus"></i></button>
                                    </div>

                                    <div class="item">
                                        <img src="images/water.jpg" class="img-circle" alt="plainwater"
                                             style="width: 240px;height:140px;">
                                        <span class="caption">Water
                                                    </span>
                                        <button type="button" id="btnWater"
                                                class="btn btn-primary btn-circle"><i
                                                class="glyphicon glyphicon-plus"></i></button>
                                    </div>


                                    <%--end drinkstab--%>
                                </div>


                                <div class="tab-pane" id="fruitstab">
                                    <%--startFruitsTab--%>

                                    <div class="foodOrderContainer">
                                        <input type="text" id="foodOrange" name="food"/>
                                        <input type="text" id="foodApple" name="food"/>
                                        <input type="text" id="foodPear" name="food"/>
                                    </div>

                                    <div class="item">
                                        <img src="images/orange.jpg" class="img-circle" alt="orange"
                                             style="width: 240px;height:140px;">
                                        <span class="caption">Orange
                                                    </span>
                                        <button type="button" id="btnOrange"
                                                class="btn btn-primary btn-circle"><i
                                                class="glyphicon glyphicon-plus"></i></button>
                                    </div>

                                    <div class="item">
                                        <img src="images/apple.jpg" class="img-circle" alt="apple"
                                             style="width: 240px;height:140px;">
                                        <span class="caption">Apple
                                                    </span>
                                        <button type="button" id="btnApple"
                                                class="btn btn-primary btn-circle"><i
                                                class="glyphicon glyphicon-plus"></i></button>
                                    </div>

                                    <div class="item">
                                        <img src="images/pear.jpg" class="img-circle" alt="pear"
                                             style="width: 240px;height:140px;">
                                        <span class="caption">Pear
                                                    </span>
                                        <button type="button" id="btnPear"
                                                class="btn btn-primary btn-circle"><i
                                                class="glyphicon glyphicon-plus"></i></button>
                                    </div>


                                    <%--EndFruitsTab--%>

                                </div>
                            </div>
                        </div>


                        <%--<div class="form-group">--%>
                        <%--<textarea class="form-control" placeholder="FoodOrder"></textarea>--%>
                        <%--</div>--%>

                    </div>


                    <div class="card">
                        <div class="card-header" data-background-color="purple">

                            <table class="table">
                                <tr>
                                    <td>
                                        <h4>Order List</h4>
                                    </td>

                                    <td class="td-actions text-right">

                                        <button type="button" rel="tooltip" title="Cancel Orders"
                                                class="btn btn-danger btn-simple btn-md"
                                                id="btndeletelist">
                                            <i class="material-icons">close</i>
                                        </button>
                                    </td>
                                </tr>
                            </table>


                        </div>
                        <div class="card-content table-responsive">


                            <table class="table" id="orderlisttable">
                                <tbody>

                                <%--<tr>--%>
                                <%--<td>Food1</td>--%>
                                <%--</tr>--%>

                                <%--<tr>--%>
                                <%--<td>Food2</td>--%>

                                <%--</tr>--%>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>


                <div class="submitContainer">

                    <div class="ArrayContainer">

                        <input type="hidden" id="orders" name="orderlist"/>

                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="text-center">
                                <input type="submit" onclick="return confirm('Are you sure?')"
                                       id="btnSubmitFood" class="btn btn-success" value="Order"/>
                            </div>
                        </div>
                    </div>
                </div>
                </form>


                <%-- end of content--%>
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
                <a href="http://www.creative-tim.com">Woodlands Integrated Health Campus</a>, made with love by
                Fanclub
            </p>
        </div>
    </footer>
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

</script>

</html>
