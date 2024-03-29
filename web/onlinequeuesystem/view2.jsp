<%@ page import="queue.OnlinequeuesystemEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="queue.QueueSystemDAO" %><%--
  Created by IntelliJ IDEA.
  User: aravin
  Date: 16-Dec-16
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: aravinm
  Date: 14/12/2016
  Time: 8:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="../../assets/img/favicon.png"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Material Dashboard PRO by Creative Tim | Premium Bootstrap Admin Template</title>
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
    <style>body {
        background: #f5f5f5;
    }

    #timer {
        font-family: Arial, sans-serif;
        font-size: 20px;
        color: #999;
        letter-spacing: -1px;
    }

    #timer span {
        font-size: 60px;
        color: #333;
        margin: 0 3px 0 15px;
    }

    #timer span:first-child {
        margin-left: 0;
    }
    </style>
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-active-color="rose" data-background-color="black"
         data-image="../../assets/img/sidebar-1.jpg">
        <!--
    Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
    Tip 2: you can also add an image using data-image tag
    Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->
        <div class="logo">
            <a href="../patientFrontPage.jsp" class="simple-text">
                <i class="material-icons">perm_identity</i> ONLINE QUEUE SYSTEM
            </a>
        </div>
        <div class="logo logo-mini">
            <a href="../patientFrontPage.jsp" class="simple-text">
                QS
            </a>
        </div>
        <div class="sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="../assets/img/faces/marc.jpg"/>
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        <i class="material-icons">account_circle</i> <%= session.getAttribute("username") %>
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="../onlinequeuesystem/graph.jsp">View Graph on current situation</a>
                            </li>
                            <li>
                                <a href="../onlinequeuesystem/exceeded.jsp">List of patients who have exceeded the
                                    amount of queues</a>
                            </li>
                            <li>
                                <a href="#">Settings</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav">

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
                    <%--<a class="navbar-brand" href="#"> Regular Tables </a>--%>
                </div>
                <div class="collapse navbar-collapse">
                    <%--<ul class="nav navbar-nav navbar-right">--%>
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
                    <%--<li class="separator hidden-lg hidden-md"></li>--%>
                    <%--</ul>--%>
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

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div style="background-color: lightgray">
            <center><h1 style="font-weight: bold">Hello, <%=session.getAttribute("firstName")%>
                <i style="font-size:50px" class="material-icons">face</i>
            </h1></center>
            <center>
                <h2><i style="font-size:30px" class="material-icons">queue</i> Patients who are in Queue:
                    <%

                        List<OnlinequeuesystemEntity> othersinq = new ArrayList<>();

                        QueueSystemDAO qu = new QueueSystemDAO();
                        othersinq = qu.getAllQueueData();


                        QueueSystemDAO qs = new QueueSystemDAO();
                        List<OnlinequeuesystemEntity> time = new ArrayList<OnlinequeuesystemEntity>();

                        time = qs.getAllQueueData();

                        Integer inttt = (Integer) session.getAttribute("newQueueNo");

                        System.out.println(inttt);

                        int lessNo = 0;

                        for (int i = 0; i < time.size(); i++) {

                            int temp = time.get(i).getQueueNumber();

                            if (temp < inttt) {
                                lessNo = lessNo + 1;
                            }


                        }
                        session.setAttribute("queuebigssi", othersinq.size());

                    %>
                    <%=othersinq.size()%>


                    <%
                        double ttime = (0.001 / 85) * (lessNo * 1 * 10);

                        session.setAttribute("timeququecallsms", lessNo * 1 * 10 + "");
                    %>
                    <script>var timer;

                    var compareDate = new Date();
                    compareDate.setDate(compareDate.getDate() + <%=ttime%>); //just for this demo today + 7 days

                    timer = setInterval(function () {
                        timeBetweenDates(compareDate);
                    }, 1000);

                    function timeBetweenDates(toDate) {
                        var dateEntered = toDate;
                        var now = new Date();
                        var difference = dateEntered.getTime() - now.getTime();


                        if (difference <= 0) {
                            alert(" Hi, your turn is here! ");
                            // Timer done
                            clearInterval(timer);

                        } else {


                            var seconds = Math.floor(difference / 1000);
                            var minutes = Math.floor(seconds / 60);
                            var hours = Math.floor(minutes / 60);
                            var days = Math.floor(hours / 24);

                            hours %= 24;
                            minutes %= 60;
                            seconds %= 60;

                            $("#days").text(days);
                            $("#hours").text(hours);
                            $("#minutes").text(minutes);
                            $("#seconds").text(seconds);
                        }
                    }</script>
                </h2>
            </center>
            <center>
                <h2><i style="font-size:30px"
                       class="material-icons">alarm</i> Your Estimated Waiting Time is:
                </h2>
                <br>
                <div id="timer"><i style="font-size:40px" class="material-icons">hourglass_empty</i>
                    <span id="days"></span>days
                    <span id="hours"></span>hours
                    <span id="minutes"></span>minutes
                    <span id="seconds"></span>seconds
                </div>

            </center>
            <br>
            <form action="/tqitest" method="post">
                <div class="text-center">
                    <button type="submit" class="btn btn-rose btn-fill btn-wd"><i style="font-size:30px"
                                                                                  class="material-icons">add_alert</i><i
                            style="font-weight: bold">
                    </i>
                        Notify me! <i style="font-size:30px" class="material-icons">add_alert</i>
                    </button>
                </div>

            </form>

        </div>
        <%--<div class="content">--%>
        <%--<div class="container-fluid">--%>
        <%--<div class="row">--%>
        <%--<div class="col-md-12">--%>
        <%--<div class="card">--%>
        <%--<div class="card-header card-header-icon" data-background-color="rose">--%>
        <%--<i class="material-icons">assignment</i>--%>
        <%--</div>--%>
        <%--<div class="card-content">--%>
        <%--<h4 class="card-title">View queue details</h4>--%>
        <%--<div class="table-responsive">--%>
        <%--<table class="table">--%>
        <%--<thead class="text-primary">--%>
        <%--<th>Name</th>--%>
        <%--<th>Number of Queues Taken</th>--%>
        <%--<th>Number of Patients ahead of you</th>--%>
        <%--<th>Estimated Waiting Time</th>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr>--%>
        <%--<td>John Lim</td>--%>
        <%--<td>3</td>--%>
        <%--<td>5</td>--%>
        <%--<td class="text-primary">20mins</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Harper Riquelm</td>--%>
        <%--<td>10</td>--%>
        <%--<td>89</td>--%>
        <%--<td class="text-primary">70 mins</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Sage Rodriguez</td>--%>
        <%--<td>12</td>--%>
        <%--<td>6</td>--%>
        <%--<td class="text-primary">50 mins</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Philip Chaney</td>--%>
        <%--<td>12</td>--%>
        <%--<td>8</td>--%>
        <%--<td class="text-primary">10 mins</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Doris Greene</td>--%>
        <%--<td>12</td>--%>
        <%--<td>7</td>--%>
        <%--<td class="text-primary">15 mins</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Mason Porter</td>--%>
        <%--<td>5</td>--%>
        <%--<td>21</td>--%>
        <%--<td class="text-primary">15 mins</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-12">--%>
        <%--<div class="card card-plain">--%>
        <%--<div class="card-header card-header-icon" data-background-color="rose">--%>
        <%--<i class="material-icons">assignment</i>--%>
        <%--</div>--%>
        <%--<h4 class="card-title">Table on Plain Background</h4>--%>
        <%--<p class="category">Here is a subtitle for this table</p>--%>
        <%--<div class="card-content table-responsive">--%>
        <%--<table class="table table-hover">--%>
        <%--<thead>--%>
        <%--<th>ID</th>--%>
        <%--<th>Name</th>--%>
        <%--<th>Salary</th>--%>
        <%--<th>Country</th>--%>
        <%--<th>City</th>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr>--%>
        <%--<td>1</td>--%>
        <%--<td>Dakota Rice</td>--%>
        <%--<td>$36,738</td>--%>
        <%--<td>Niger</td>--%>
        <%--<td>Oud-Turnhout</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>2</td>--%>
        <%--<td>Minerva Hooper</td>--%>
        <%--<td>$23,789</td>--%>
        <%--<td>Curaçao</td>--%>
        <%--<td>Sinaai-Waas</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>3</td>--%>
        <%--<td>Sage Rodriguez</td>--%>
        <%--<td>$56,142</td>--%>
        <%--<td>Netherlands</td>--%>
        <%--<td>Baileux</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>4</td>--%>
        <%--<td>Philip Chaney</td>--%>
        <%--<td>$38,735</td>--%>
        <%--<td>Korea, South</td>--%>
        <%--<td>Overland Park</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>5</td>--%>
        <%--<td>Doris Greene</td>--%>
        <%--<td>$63,542</td>--%>
        <%--<td>Malawi</td>--%>
        <%--<td>Feldkirchen in Kärnten</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>6</td>--%>
        <%--<td>Mason Porter</td>--%>
        <%--<td>$78,615</td>--%>
        <%--<td>Chile</td>--%>
        <%--<td>Gloucester</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-12">--%>
        <%--<div class="card">--%>
        <%--<div class="card-header card-header-icon" data-background-color="rose">--%>
        <%--<i class="material-icons">assignment</i>--%>
        <%--</div>--%>
        <%--<h4 class="card-title">Regular Table with Colors</h4>--%>
        <%--<div class="card-content table-responsive table-full-width">--%>
        <%--<table class="table table-hover">--%>
        <%--<thead>--%>
        <%--<th>ID</th>--%>
        <%--<th>Name</th>--%>
        <%--<th>Salary</th>--%>
        <%--<th>Country</th>--%>
        <%--<th>City</th>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="success">--%>
        <%--<td>1</td>--%>
        <%--<td>Dakota Rice (Success)</td>--%>
        <%--<td>$36,738</td>--%>
        <%--<td>Niger</td>--%>
        <%--<td>Oud-Turnhout</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>2</td>--%>
        <%--<td>Minerva Hooper</td>--%>
        <%--<td>$23,789</td>--%>
        <%--<td>Curaçao</td>--%>
        <%--<td>Sinaai-Waas</td>--%>
        <%--</tr>--%>
        <%--<tr class="info">--%>
        <%--<td>3</td>--%>
        <%--<td>Sage Rodriguez (Info)</td>--%>
        <%--<td>$56,142</td>--%>
        <%--<td>Netherlands</td>--%>
        <%--<td>Baileux</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>4</td>--%>
        <%--<td>Philip Chaney</td>--%>
        <%--<td>$38,735</td>--%>
        <%--<td>Korea, South</td>--%>
        <%--<td>Overland Park</td>--%>
        <%--</tr>--%>
        <%--<tr class="danger">--%>
        <%--<td>5</td>--%>
        <%--<td>Doris Greene (Danger)</td>--%>
        <%--<td>$63,542</td>--%>
        <%--<td>Malawi</td>--%>
        <%--<td>Feldkirchen in Kärnten</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>6</td>--%>
        <%--<td>Mason Porter</td>--%>
        <%--<td>$78,615</td>--%>
        <%--<td>Chile</td>--%>
        <%--<td>Gloucester</td>--%>
        <%--</tr>--%>
        <%--<tr class="warning">--%>
        <%--<td>7</td>--%>
        <%--<td>Mike Chaney (Warning)</td>--%>
        <%--<td>$38,735</td>--%>
        <%--<td>Romania</td>--%>
        <%--<td>Bucharest</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
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
        <%--<a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web--%>
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
<%--<span class="badge filter badge-rose active" data-color="rose"></span>--%>
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

</html>
