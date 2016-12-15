<%@ page import="java.util.ArrayList" %><%--
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
    ArrayList<String> orderList = new ArrayList<String>();
    orderList = (ArrayList<String>)session.getAttribute("orderList");
    String itemTest = orderList.get(0);

    %>
</head>
<body>
<%--TEMP DEMO EDIT PARAMETER!!!--%>
<%=itemTest%>
</body>
</html>
