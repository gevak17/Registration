<%@include file="head/head.jsp"%>

    <!--http://esri.github.io/esri-leaflet/examples/geocoding-control.html-->
    <%--<meta charset="utf-8" />--%>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%--<link rel="shortcut icon" type="image/x-icon" href="favicon-32x32.png" />--%>

    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/leaflet/leaflet.css" />
    <script src="http://10.114.10.48:8080/sodu2016/lib/leaflet/leaflet.js"></script>

    <!-- Load Esri Leaflet from CDN -->
    <script src="http://10.114.10.48:8080/sodu2016/lib/esri-leaflet-geocoder/esri-leaflet.js"></script>
    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/esri-leaflet-geocoder/esri-leaflet-geocoder.css">
    <script src="http://10.114.10.48:8080/sodu2016/lib/esri-leaflet-geocoder/esri-leaflet-geocoder.js"></script>
    <script src="http://10.114.10.48:8080/sodu2016/lib/leaflet.wms.js" data-main="app"></script>
    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/routing-machine/leaflet-routing-machine.css" />
    <script src="http://10.114.10.48:8080/sodu2016/lib/routing-machine/leaflet-routing-machine.js"></script>
    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/control-geocoder/Control.Geocoder.css" />
    <script src="http://10.114.10.48:8080/sodu2016/lib/control-geocoder/Control.Geocoder.js"></script>
    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/markercluster/MarkerCluster.css" />
    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/markercluster/MarkerCluster.Default.css" />
    <script src="http://10.114.10.48:8080/sodu2016/lib/markercluster/leaflet.markercluster-src.js"></script>
    <link rel="stylesheet" href="http://10.114.10.48:8080/sodu2016/lib/Leaflet.PolylineMeasure/Leaflet.PolylineMeasure.css" />
    <script src="http://10.114.10.48:8080/sodu2016/lib/Leaflet.PolylineMeasure/Leaflet.PolylineMeasure.js"></script>
    <script src="http://10.114.10.48:8080/sodu2016/lib/jquery-3.2.1.min.js"></script>
    <script src="http://10.114.10.48:8080/sodu2016/lib/L.TileLayer.BetterWMS.js"></script>
    <script src="http://10.114.10.48:8080/sodu2016/lib/purl.js"></script>

    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <style>
        #map {
            width: 600px;
            height: 400px;
        }
        body {
             padding: 0; margin: 0;
         }
        html, body, #map {
            height: 100vh; width: 100vw;
        }
    </style>
<title>Карта Львівської області</title>

</head>
<body>

<div class="body1">
    <%@include file="head/menu.jsp"%>

<h1>User page</h1>
<p>This is page for authentificated users</p>

<div id='map'></div>

<script src="js/var.js"></script>
<script src="js/mapserver.js"></script>
<script src="js/map.js"></script>
<br>
<button id="getLatLon">getLatLon</button>
<br>
<center>
    <div class="regGidrant">
        <form action="/saveGidrant" method="post">
            <input type="text" name="address" placeholder="address...">
            <input type="number" name="house" placeholder="house...">
            <input type="text" name="zrazok" placeholder="zrazok...">
            <input type="text" name="type" placeholder="type..."><br>
            <input type="number" name="diametr" placeholder="diametr...">
            <input type="text" name="spravnist" placeholder="spravnist...">
            <input type="text" name="vkazivnik" placeholder="vkazivnik..."><br>
            <input type="text" value="" id="lng" placeholder="lng..."><br>
            <input type="text" value="" id="lat" placeholder="lat..."><br>
            <input type="submit" value="Add gidrant">
            <input type="hidden"
                   name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
        </form>
    </div>
</center>
<br>
<script type="application/javascript">
    $("#getLatLon").click(function () {
        getLatLon();
    });
</script>
        <%@include file="head/footer.jsp"%>



<%--<div class="body1" style="float: left">--%>
    <%--<center>--%>
        <%--&lt;%&ndash;<iframe src="http://10.114.10.48:8080/sodu2016"&ndash;%&gt;--%>
        <%--&lt;%&ndash;width="70%" height="600px" frameborder="0" style="border:0" allowfullscreen></iframe>&ndash;%&gt;--%>

        <%--<table>--%>
            <%--<tr>--%>
                <%--<th>Gidrants</th>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th><p> id | </p></th>--%>
                <%--<th><p>address | </p></th>--%>
                <%--<th><p>house</p></th>--%>
            <%--</tr>--%>
            <%--<c:forEach items="${AllGidrants}" var="gidrant">--%>
                <%--<tr>--%>
                    <%--<th>${gidrant.id}</th>--%>
                    <%--<th>${gidrant.address}</th>--%>
                    <%--<th>${gidrant.house}</th>--%>
                <%--</tr>--%>
            <%--</c:forEach>--%>
        <%--</table>--%>
    <%--</center>--%>
<%--</div>--%>


<!--        <form  onsubmit="return false">
            <button onclick="map.locate({setView: true, maxZoom: 18});">Click me</button>
            <button onclick="map.setView([49.8423, 24.02], 18);">Click me2</button>
        </form>-->
<%--</body>--%>
<%--</html>--%>
<%--<title>User page</title>--%>
<%--<h1>User page</h1>--%>
<%--<p>This is page for authentificated users</p>--%>
<%--${user}--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--private String address;
    private int house;
    private String zrazok;
    private String type;
    private int diametr;
    private String spravnist;
    private String vkazivnik;--%>
<%--<div style="text-align: center">--%>
    <%--<form action="/saveGidrant" method="post">--%>
        <%--<input type="text" name="address" placeholder="address...">--%>
        <%--<input type="number" name="house" placeholder="house..."><br>--%>
        <%--<input type="text" name="zrazok" placeholder="zrazok...">--%>
        <%--<input type="text" name="type" placeholder="type..."><br>--%>
        <%--<input type="number" name="diametr" placeholder="diametr...">--%>
        <%--<input type="text" name="spravnist" placeholder="spravnist..."><br>--%>
        <%--<input type="text" name="vkazivnik" placeholder="vkazivnik...">--%>
        <%--<input type="submit">--%>
        <%--<input type="hidden"--%>
                   <%--name="${_csrf.parameterName}"--%>
                   <%--value="${_csrf.token}"/>--%>
    <%--</form>--%>
<%--</div>--%>
<%--<center>--%>
<%--<div class="regGidrant">--%>
    <%--<form action="/saveGidrant" method="post">--%>
        <%--<input type="text" name="address" placeholder="address...">--%>
        <%--<input type="number" name="house" placeholder="house...">--%>
        <%--<input type="text" name="zrazok" placeholder="zrazok...">--%>
        <%--<input type="text" name="type" placeholder="type..."><br>--%>
        <%--<input type="number" name="diametr" placeholder="diametr...">--%>
        <%--<input type="text" name="spravnist" placeholder="spravnist...">--%>
        <%--<input type="text" name="vkazivnik" placeholder="vkazivnik..."><br>--%>
        <%--<input type="submit" value="Add gidrant">--%>
        <%--<input type="hidden"--%>
               <%--name="${_csrf.parameterName}"--%>
               <%--value="${_csrf.token}"/>--%>
    <%--</form>--%>
<%--</div>--%>
<%--</center>--%>
<%--<div class="body1" style="float: left">--%>
    <%--<center>--%>
    <%--&lt;%&ndash;<iframe src="http://10.114.10.48:8080/sodu2016"&ndash;%&gt;--%>
            <%--&lt;%&ndash;width="70%" height="600px" frameborder="0" style="border:0" allowfullscreen></iframe>&ndash;%&gt;--%>

    <%--<table>--%>
        <%--<tr>--%>
            <%--<th>Gidrants</th>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th><p> id | </p></th>--%>
            <%--<th><p>address | </p></th>--%>
            <%--<th><p>house</p></th>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${AllGidrants}" var="gidrant">--%>
            <%--<tr>--%>
                <%--<th>${gidrant.id}</th>--%>
                <%--<th>${gidrant.address}</th>--%>
                <%--<th>${gidrant.house}</th>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>
    <%--</center>--%>
<%--</div>--%>




