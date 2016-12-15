<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>
<%
    String name = request.getParameter("name");
    String nric = request.getParameter("nric");
    String phoneNumber = request.getParameter("phoneNumber");
    if (name != null && nric != null && phoneNumber != null) {
        session.setAttribute("name", name);
        session.setAttribute("nric", nric);
    } else {
        name = (String) session.getAttribute("name");
        nric = (String) session.getAttribute("nrics");
    }
%>
<body>
<form action="/controller">
    Your Name is <%= name %> <br>
    Your email address is <%= nric %>
    <input type="text" name="guess" placeholder="Choose Preferred Timing"/>
    <input type="submit"/>
</form>

</body>
</html>