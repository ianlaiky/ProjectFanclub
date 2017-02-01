<%@ page import="java.util.ArrayList" %>
<%@ page import="foodOrder.foodOrderDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="foodOrder.FoodorderEntity" %>
<%@ page import="java.util.Collections" %><%--
  Created by IntelliJ IDEA.
  User: astaroh
  Date: 12/15/2016
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order List</title>
    <%
//    ArrayList<String> orderList = new ArrayList<String>();
//    orderList = (ArrayList<String>)session.getAttribute("orderList");

        foodOrderDAO fod = new foodOrderDAO();
        List<FoodorderEntity> fodList;
        fodList = fod.getAllfoodOrder();
//        Collections.sort(fodList);
    %>

    <%
        ArrayList<String> foodNamesArr = new ArrayList<>();
        for (int i = 0 ; i<fodList.size() ; i++){
            foodNamesArr.add(fodList.get(i).getFoodName());
        }
        Collections.sort(foodNamesArr);
    %>
</head>
<body>

<h3><b>Food Order List</b></h3>
<%
    for(int i = 0 ; i<foodNamesArr.size();i++){
%>
<%=foodNamesArr.get(i)%><br>
<% } %>
</body>
</html>
