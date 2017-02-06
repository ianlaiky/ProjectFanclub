<%@ page import="foodOrder.foodOrderDAO" %>
<%@ page import="foodOrder.FoodorderEntity" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %><%--
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



    <script type="text/javascript">

//        jQuery(function () {
//            $("#viewDiet").click(function (e) {
//                e.preventDefault();
//
//                var protein = $('#protein').val();
//
//
//
//
//
//
//            });
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
            <a href="http://www.creative-tim.com" class="simple-text">
                Diet Recommendation
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
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="../foodorder/index.jsp">Order</a>
                            </li>
                            <li>
                                <a href="../foodorder/dietaryrestrictions.jsp">Dietary Restrictions</a>
                            </li>
                            <li>
                                <a href="../foodorder/dietrecommend.jsp">Diet Recommendation</a>
                            </li>
                            <li>
                                <a href="#">FeedBack</a>
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
            </div>
            <ul class="nav">
                <li class="active">
                    <a href="index.jsp">
                        <i class="material-icons">dashboard</i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a data-toggle="collapse" href="#pagesExamples">
                        <i class="material-icons">image</i>
                        <p>Pages
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="pagesExamples">
                        <ul class="nav">
                            <li>
                                <a href="../pages/pricing.html">Pricing</a>
                            </li>
                            <li>
                                <a href="../pages/timeline.html">Timeline</a>
                            </li>
                            <li>
                                <a href="../pages/login.html">Login Page</a>
                            </li>
                            <li>
                                <a href="../pages/register.html">Register Page</a>
                            </li>
                            <li>
                                <a href="../pages/lock.html">Lock Screen Page</a>
                            </li>
                            <li>
                                <a href="../pages/user.html">User Profile</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a data-toggle="collapse" href="#componentsExamples">
                        <i class="material-icons">apps</i>
                        <p>Components
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="componentsExamples">
                        <ul class="nav">
                            <li>
                                <a href="../components/buttons.html">Buttons</a>
                            </li>
                            <li>
                                <a href="../components/grid.html">Grid System</a>
                            </li>
                            <li>
                                <a href="../components/panels.html">Panels</a>
                            </li>
                            <li>
                                <a href="../components/sweet-alert.html">Sweet Alert</a>
                            </li>
                            <li>
                                <a href="../components/notifications.html">Notifications</a>
                            </li>
                            <li>
                                <a href="../components/icons.html">Icons</a>
                            </li>
                            <li>
                                <a href="../components/typography.html">Typography</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a data-toggle="collapse" href="#formsExamples">
                        <i class="material-icons">content_paste</i>
                        <p>Forms
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="formsExamples">
                        <ul class="nav">
                            <li>
                                <a href="../forms/regular.html">Regular Forms</a>
                            </li>
                            <li>
                                <a href="../forms/extended.html">Extended Forms</a>
                            </li>
                            <li>
                                <a href="../forms/validation.html">Validation Forms</a>
                            </li>
                            <li>
                                <a href="form/profile.jsp">Wizard</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a data-toggle="collapse" href="#tablesExamples">
                        <i class="material-icons">grid_on</i>
                        <p>Tables
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="tablesExamples">
                        <ul class="nav">
                            <li>
                                <a href="../tables/regular.html">Regular Tables</a>
                            </li>
                            <li>
                                <a href="../tables/extended.html">Extended Tables</a>
                            </li>
                            <li>
                                <a href="../tables/datatables.net.html">DataTables.net</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a data-toggle="collapse" href="#mapsExamples">
                        <i class="material-icons">place</i>
                        <p>Maps
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="mapsExamples">
                        <ul class="nav">
                            <li>
                                <a href="../maps/google.html">Google Maps</a>
                            </li>
                            <li>
                                <a href="../maps/fullscreen.html">Full Screen Map</a>
                            </li>
                            <li>
                                <a href="../maps/vector.html">Vector Map</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="../widgets.html">
                        <i class="material-icons">widgets</i>
                        <p>Widgets</p>
                    </a>
                </li>
                <li>
                    <a href="../charts.html">
                        <i class="material-icons">timeline</i>
                        <p>Charts</p>
                    </a>
                </li>
                <li>
                    <a href="../calendar.html">
                        <i class="material-icons">date_range</i>
                        <p>Calendar</p>
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
                    <a class="navbar-brand" href="#"> Home </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">dashboard</i>
                                <p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">notifications</i>
                                <span class="notification">5</span>
                                <p class="hidden-lg hidden-md">
                                    Notifications
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Mike John responded to your email</a>
                                </li>
                                <li>
                                    <a href="#">You have 5 new tasks</a>
                                </li>
                                <li>
                                    <a href="#">You're now friend with Andrew</a>
                                </li>
                                <li>
                                    <a href="#">Another Notification</a>
                                </li>
                                <li>
                                    <a href="#">Another One</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">person</i>
                                <p class="hidden-lg hidden-md">Profile</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group form-search is-empty">
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="material-input"></span>
                        </div>
                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                            <i class="material-icons">search</i>
                            <div class="ripple-container"></div>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="col-sm-8 col-sm-offset-2">
                    <!-- Insert all the awesome body content here-->

                    <%--reset table values bug--%>
                    <%
                    session.setAttribute("carboh",0.0);
                    session.setAttribute("sugar",0.0);
                    session.setAttribute("fibre",0.0);
                    session.setAttribute("protein",0.0);
                    session.setAttribute("fat",0.0);
                    session.setAttribute("salt",0.0);
                    session.setAttribute("nutrient","");
                    session.setAttribute("recfood","");
                    %>

                    <%--nutrients container--%>
                    <input type="hidden" id="protein" value="1.1">
                    <input type="hidden" id="fat" value="2.4">



                    <form action="/dietservlet" action="get">
                        <div class="row">
                            <div class="col-md-9">


                                <div class="form-group label-floating">
                                    <label class="control-label">Enter Date of Meal ( DD/MM/YYYY )</label>
                                    <input type="text" class="form-control" id="dateInput" name="enterdate">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group label-floating">
                                    <button type="submit" id= "viewDiet" class="btn btn-primary center-block" >View diet</button>

                                </div>
                            </div>

                        </div>
                    </form>
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 font color="white">Your Diet</h4>

                        </div>
                        <div class="card-content table-responsive">
                            <table class="table table-hover" id="dietTable">
                                <thead class="text-warning">
                                <th>Food</th>
                                <th>Quantity</th>
                                <th>Date</th>

                                </thead>
                                <tbody>



                                <%!

                                    double protein = 0;
                                    double fat =0;
                                    double carboh=0;
                                    double salt=0;
                                    double sugar=0;
                                    double fibre=0;
                                    %>
                                <%

                                protein=0;
                                fat=0;
                                carboh=0;
                                salt=0;
                                sugar=0;
                                fibre=0;
                                System.out.println("Protein refreshed!"+ protein);
                                %>

                                <%!
                                    public void updateNutrients(String foodName, int quantity){

                                        if (foodName.equals("Fish Porridge")) {

                                            protein =  protein + 17 * quantity ;
//                                            session.setAttribute("protein",protein);
                                            fat = fat + 3 * quantity;
                                            salt = salt + 1.6 * quantity;
                                            carboh = carboh + 48 * quantity;

                                        }

                                        if(foodName.equals("Apple")){
                                            carboh= carboh + 28 * quantity;
                                            fibre = fibre + 3 * quantity;
                                            sugar = sugar+ 13 * quantity;

                                        }
                                        if(foodName.equals("Chicken Noodles")){
                                            protein = protein + 9 * quantity;
                                            fat = fat+ 4 * quantity;
                                            salt = salt + 1 *quantity;
                                            carboh = carboh + 48 * quantity;
                                            sugar = sugar + 1 *quantity;
                                            fibre = fibre + 1 * quantity;
                                        }
                                        if(foodName.equals("Egg&Tomato Sandwich")){
                                            fat = fat + 6*quantity;
                                            sugar = sugar + 2*quantity;
                                            carboh = carboh + 20*quantity;

                                        }
                                        if(foodName.equals("Cornflakes")){
                                            fat = fat + 1*quantity;
                                            protein = protein + 4* quantity;
                                            sugar = sugar + 3* quantity;
                                            fibre = fibre+ 2* quantity;
                                            carboh = carboh + 24*quantity;
                                        }
                                        if(foodName.equals("Fried Egg&Sausages")){
                                            fat = fat + 4*quantity;
                                            salt = salt+ 0.3*quantity;
                                            protein = protein + 10*quantity;
                                            sugar = sugar + 2*quantity;
                                            fibre = fibre + 2*quantity;
                                            carboh = carboh + 20*quantity;
                                        }
                                        if(foodName.equals("Kaya Bread")){
                                            fat = fat + 4*quantity;
                                            fibre = fibre + 1 *quantity;
                                            sugar = sugar+1 *quantity;
                                            protein = protein+1*quantity;
                                            carboh = carboh + 20*quantity;

                                        }
                                        if(foodName.equals("Oatmeal")){
                                            fat = fat + 3.2 *quantity;
                                            protein = protein + 8 *quantity;
                                            fibre= fibre+4*quantity;
                                            sugar = sugar+1*quantity;
                                            salt = salt +4*quantity;
                                            carboh = carboh + 25*quantity;
                                        }
                                        if(foodName.equals("Orange")){
                                            fibre = fibre +3 *quantity;
                                            sugar = sugar+6* quantity;
                                            carboh= carboh + 17 * quantity;


                                        }
                                        if(foodName.equals("Pear")){
                                            fibre = fibre +4 *quantity;
                                            sugar = sugar+8* quantity;
                                            carboh= carboh + 17 * quantity;
                                        }





                                    }
                                %>
                                <%


                                    foodOrderDAO fod = new foodOrderDAO();

//                                    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
//                                    Date date = new Date();
//                                    String requestDate = dateFormat.format(date);


                                    List<FoodorderEntity> fodList;
                                    fodList = fod.getAllfoodOrder();

                                    //filter list for current user meals

                                    ArrayList<FoodorderEntity> dietList = new ArrayList<>();
                                    for (int i = 0 ; i<fodList.size() ; i++){

                                        String a = fodList.get(i).getPatientId();
                                        String b = (String) session.getAttribute("username");

                                        String foodDate = fodList.get(i).getOrderdate();
                                        String dateRequested = (String) session.getAttribute("enterdate");
                                        //different condition when reload
                                        if(a.equals(b) && foodDate.equals(dateRequested)){
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

                                    <td><%=session.getAttribute("enterdate")%></td>


                                </tr>
                                <%
                                        if (entry.getKey().equals("Fish Porridge")) {
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Apple")){
                                            updateNutrients(entry.getKey(),entry.getValue());

                                        }
                                        if(entry.getKey().equals("Chicken Noodles")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Pear")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Orange")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Egg&Tomato Sandwich")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Cornflakes")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Fried Egg&Sausages")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Kaya Bread")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }
                                        if(entry.getKey().equals("Oatmeal")){
                                            updateNutrients(entry.getKey(),entry.getValue());
                                        }

                                        session.setAttribute("carboh",carboh);
                                        session.setAttribute("sugar",sugar);
                                        session.setAttribute("fibre",fibre);
                                        session.setAttribute("protein",protein);
                                        session.setAttribute("fat",fat);
                                        session.setAttribute("salt",salt);

                                    }
                                %>








                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-8 col-md-12">

                        <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                        </div>

                        <div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="card-header" data-background-color="purple">
                                <h4 font color="white">Recommended food</h4>

                            </div>
                            <div class="card-content table-responsive">
                                <%
                                    session.setAttribute("nutrient","");
                                    session.setAttribute("recfood","");
                                    if((Double)session.getAttribute("protein") < 56){
                                        session.setAttribute("nutrient","protein");
                                        session.setAttribute("recfood","fish porridge");


                                }
                                    else if((Double)session.getAttribute("fat")< 70){
                                        session.setAttribute("nutrient","fat");
                                        session.setAttribute("recfood","chicken noodles");

                                }
                                    else if((Double)session.getAttribute("carboh")<310){
                                        session.setAttribute("nutrient","carbohydrates");
                                        session.setAttribute("recfood","chicken noodles");

                                    }
                                    else if((Double)session.getAttribute("sugar")<90){
                                        session.setAttribute("nutrient","sugar");
                                        session.setAttribute("recfood","apple");

                                    }
                                    else if((Double)session.getAttribute("fibre")<30){
                                        session.setAttribute("nutrient","dietary fibre");
                                        session.setAttribute("recfood","cornflakes");
                                    }



                                %>
                                <% if(!(session.getAttribute("nutrient").equals(""))){ %>

                                You are low on <b><%=session.getAttribute("nutrient")%></b><br>
                                Your Recommended food is <%=session.getAttribute("recfood")%>
                                <% System.out.println("nutrient empty check"+session.getAttribute("nutrient"));%>


                                <% } else { %>
                                Your diet is great!
                                <% } %>


                            </div>
                        </div>
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
                        <span class="badge filter badge-rose active" data-color="green"></span>
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
                    <img src="../../assets/img/sidebar-1.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-2.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-3.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="../../assets/img/sidebar-4.jpg" alt=""/>
                </a>
            </li>
            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/material-dashboard-pro" target="_blank"
                       class="btn btn-rose btn-block">Buy Now</a>
                </div>
                <div class="">
                    <a href="http://www.creative-tim.com/product/material-dashboard" target="_blank"
                       class="btn btn-info btn-block">Get Free Demo</a>
                </div>
            </li>
            <li class="header-title">Thank you for 95 shares!</li>
            <li class="button-container">
                <button id="twitter" class="btn btn-social btn-twitter btn-round"><i class="fa fa-twitter"></i> &middot;
                    45
                </button>
                <button id="facebook" class="btn btn-social btn-facebook btn-round"><i
                        class="fa fa-facebook-square"> &middot;</i>50
                </button>
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

<script src="../../assets/js/jquery.canvasjs.min.js"></script>

<script type="text/javascript">
    $().ready(function () {
        demo.initMaterialWizard();

    });



    window.onload = function () {



        var chart = new CanvasJS.Chart("chartContainer",
            {
                title:{
                    text: "Diet Nutrition"
                },
                animationEnabled: true,
                axisY: {
                    title: "Grams(g)"
                },
                legend: {
                    verticalAlign: "bottom",
                    horizontalAlign: "center"
                },
                theme: "theme2",
                data: [

                    {

                        type: "column",
                        showInLegend: true,
                        legendMarkerColor: "grey",
                        legendText: "D.fibre = Dietary Fibre",
                        dataPoints: [
                            {y: <%=session.getAttribute("protein")%> , label: "Protein"},
                            {y: <%=session.getAttribute("fat")%>,  label: "Fat" },
                            {y: <%=session.getAttribute("carboh")%>,  label: "Carbohydrates"},
                            {y: <%=session.getAttribute("sugar")%>,  label: "Sugar"},
                            {y: <%=session.getAttribute("salt")%>,  label: "Sodium(Salt)"},
                            {y: <%=session.getAttribute("fibre")%>, label: "D.Fibre"},

                        ]
                    }
                ]
            });

        chart.render();
    }
</script>

</html>

