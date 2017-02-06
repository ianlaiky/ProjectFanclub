<%@ page import="foodOrder.foodOrderDAO" %>
<%@ page import="foodOrder.FoodorderEntity" %>
<%@ page import="static org.eclipse.persistence.config.ResultType.Map" %>
<%@ page import="java.util.*" %><%--
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
    <%--&lt;%&ndash;<%! public static void printMap(Map<String, Integer> map) {&ndash;%&gt;--%>

        <%--&lt;%&ndash;for (Map.Entry<String, Integer> entry : map.entrySet()) {&ndash;%&gt;--%>


            <%--&lt;%&ndash;System.out.println("Food : " + entry.getKey() + " Quantity : "&ndash;%&gt;--%>
                    <%--&lt;%&ndash;+ entry.getValue());&ndash;%&gt;--%>
        <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;%>&ndash;%&gt;--%>
    <%--<%--%>
<%--//    ArrayList<String> orderList = new ArrayList<String>();--%>
<%--//    orderList = (ArrayList<String>)session.getAttribute("orderList");--%>


        <%--foodOrderDAO fod = new foodOrderDAO();--%>
        <%--List<FoodorderEntity> fodList;--%>
        <%--fodList = fod.getAllfoodOrder();--%>
<%--//        Collections.sort(fodList);--%>
    <%--%>--%>

    <%--<%--%>
        <%--ArrayList<String> foodNamesArr = new ArrayList<>();--%>
        <%--for (int i = 0 ; i<fodList.size() ; i++){--%>
            <%--foodNamesArr.add(fodList.get(i).getFoodName());--%>
        <%--}--%>
        <%--Collections.sort(foodNamesArr);--%>

<%--//        Set<String> uniqueSet = new HashSet<String>(foodNamesArr);--%>
<%--//        for (String temp : uniqueSet) {--%>
<%--//            System.out.println(temp + ": " + Collections.frequency(foodNamesArr, temp));--%>
<%--//        }--%>
        <%--Map<String, Integer> map = new HashMap<String, Integer>();--%>
        <%--for (String temp : foodNamesArr) {--%>
            <%--Integer count = map.get(temp);--%>
            <%--map.put(temp, (count == null) ? 1 : count + 1);--%>
        <%--}--%>
        <%--System.out.println("\nSorted Map");--%>
        <%--Map<String, Integer> treeMap = new TreeMap<String, Integer>(map);--%>

    <%--%>--%>
</head>
<body>
Successfully Submitted Order





</body>
</html>
