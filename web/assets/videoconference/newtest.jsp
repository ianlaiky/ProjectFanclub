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

    <script src="http://cdn.peerjs.com/0.3/peer.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

    <script type="text/javascript">

        var conn;
        var peer = new Peer({key: 'ezdeolfd1x7p66r'});
        peer.on('open',function (id) {
            $('#pid').text(id);


        })
        peer.on('connection',connect);
        function connect(c){
            conn=c;
            console.log("ssfd"+c);
            $('#rid').val(conn.peer);
            $('#rid').prop('disabled',true);

        }
        $(document).ready(function () {
            $("#connec").click(function () {
                console.log("sdf");
                var c = peer.connect($('#rid').val());
                c.on('open',function () {
                    connect(c);
                });
            });
        });


        var video = document.getElementById('video');

        navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
        navigator.getUserMedia({video: true, audio: true}, function(stream) {
            var call = peer.call('another-peers-id', stream);
            call.on('stream', function(remoteStream) {
                // Show stream in some <video> element.


            });
        }, function(err) {
            console.log('Failed to get local stream' ,err);
        });
    </script>


</head>
<body>




<span>Your id is </span><span id="pid"></span>
<br>
<input type="text" id="rid" placeholder="inpput id here">
<input type="button" id="connec" value="Connect">
<input type="button" id="disconnect" value="Disconnect">

<video id="video" width="400" height="300" autoplay></video>

<br>
<%--<div id="progressBar" style="width: 0%"></div>--%>

</body>
</html>
