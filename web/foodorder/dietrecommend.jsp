<%@ page import="foodOrder.foodOrderDAO" %>
<%@ page import="foodOrder.FoodorderEntity" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.TimeZone"%>
<%@ page import="java.util.*" %>
<%@ page import="java.time.ZonedDateTime" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.ZoneId" %><%--
  Created by IntelliJ IDEA.
  User: astaroh
  Date: 2/1/2017
  Time: 9:08 PM
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <title>Vision API</title>
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">

    </style>


    <script>



//        jQuery(function () {
//                    $("#viewDiet").click(function (e) {
//                        e.preventDefault();
//
//                        var dateinput = $('#protein').val();
//                        alert(dateinput);
//
//
//
//
//
//                    });
//        });
    </script>




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
            <a href="../patientFrontPage.jsp"  class="simple-text">
                Diet recommendation
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
                    <a href="../foodorder/index.jsp">
                        <i class="material-icons">content_paste</i>
                        <p>Food Ordering</p>
                    </a>
                </li>

                <li>
                    <a href="#">
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


            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="col-sm-8 col-sm-offset-2">
                    <!-- Insert all the awesome body content here-->

                    <form action="/dietservlet" action="get">
                    <div class="row">
                        <div class="col-md-9">

                                <%
                                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");

                                ZonedDateTime localDate = ZonedDateTime.now(ZoneId.of("Asia/Singapore"));
                                System.out.println(dtf.format(localDate));

                                String currentdate = dtf.format(localDate);
                                %>



                            <div class="form-group label-floating">
                                <label class="control-label">Enter Date of Meal ( DD/MM/YYYY )</label>
                                <input type="text" class="form-control" id="dateInput" name="enterdate"
                                       placeholder ="<%=currentdate%>"value="<%=currentdate%>">



                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group label-floating">
                                <button type="submit" id= "viewDiet" class="btn btn-primary center-block">Get recommendation</button>

                            </div>
                        </div>

                    </div>
                    </form>
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 font color="white">Your Diet for TODAY</h4>

                        </div>
                        <div class="card-content table-responsive">
                            <table class="table table-hover" id="dietTable">
                                <thead class="text-warning">
                                <th>Food</th>
                                <th>Quantity</th>
                                <th>Date</th>

                                </thead>
                                <tbody>

                                    <%
                                        foodOrderDAO fod = new foodOrderDAO();




                                        List<FoodorderEntity> fodList;
                                        fodList = fod.getAllfoodOrder();

                                        //filter list for current user meals

                                        ArrayList<FoodorderEntity> dietList = new ArrayList<>();
                                        for (int i = 0 ; i<fodList.size() ; i++){

                                            String a = fodList.get(i).getPatientId();
                                            String b = (String) session.getAttribute("username");
                                            String foodDate = fodList.get(i).getOrderdate();

                                            if(a.equals(b) && foodDate.equals(currentdate)){
                                                dietList.add(fodList.get(i));

                                    }
                                        }

                                        //getting merged quantity
                                        ArrayList<String> foodNamesArr = new ArrayList<>();
                                        for (int i = 0 ; i<dietList.size() ; i++){
                                            foodNamesArr.add(dietList.get(i).getFoodName());
                                        }
                                        Collections.sort(foodNamesArr);

                                        Map<String, Integer> map = new HashMap<String, Integer>();
                                        for (String temp : foodNamesArr) {
                                            Integer count = map.get(temp);
                                            map.put(temp, (count == null) ? 1 : count + 1);
                                        }






                                    %>
                                    <%
                                        for (Map.Entry<String, Integer> entry : map.entrySet()) {
                                    %>
                                    <tr>

                                    <td><%=entry.getKey()%></td>

                                    <td><%=entry.getValue()%></td>

                                    <td><%=currentdate%></td>
                                    </tr>
                                    <% }
                                        %>


                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!--end of content-->
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
    $().ready(function () {
        demo.initMaterialWizard();

    });

//        $("#viewDiet").click(function (e) {
//            e.preventDefault();
//            var dateValue = document.getelementById("dateInput");
//            alert("testalert");
//
//
//        });

</script>

</html>

