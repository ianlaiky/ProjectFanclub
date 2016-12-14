<%--
  Created by IntelliJ IDEA.
  User: Ian
  Date: 14/12/2016
  Time: 6:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script src="http://cdn.peerjs.com/0.3/peer.min.js"></script>
<script type="text/javascript">


    var conn;
    var peer = new Peer({key: 'ezdeolfd1x7p66r'});
    peer.on('open',function (id) {


    })







</script>


<span>Your id is </span><span id="pid"></span>
<br>
<input type="text" id="rid" placeholder="inpput id here">
<input type="button" id="connect" value="Connect">
<input type="button" id="disconnect" value="Disconnect">

<br>
<%--<div id="progressBar" style="width: 0%"></div>--%>

</body>
</html>
