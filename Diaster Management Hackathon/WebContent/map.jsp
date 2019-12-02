<!DOCTYPE html>

<html>
   
   <head>
       
       <title>Map </title>
       <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
       
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   
       <title>Map</title>
       <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     
   <link rel="shortcut icon" type="image/png" href="static/ax9eqvs2_heart-logo.png"/>
    

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
       
   </head>
   
    <style>

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            margin-left: 20%;
            width:50%
        }
        #map { position:absolute;left: 225px; top:57px; bottom:0px;height:655px ;width:1310px; }
        .geocoder {
            position:absolute;left: 350px; top:290px;
        }
    </style>

   <!-- <div class="container">

        <form action="" id="signupForm">
            <label for="lat">latitude</label>
            <input type="text" id="lat" name="lat" placeholder="Your lat..">

            <label for="lng">lng</label>
            <input type="text" id="lng" name="lng" placeholder="Your lng..">

            <input type="submit" value="Submit" >
        </form>
    </div>-->
	
  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="">GetSaved.com</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
      
        <li class="nav-item dropdown no-arrow">
          <i id="geocoder" ></i>
         
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        
    
     
       <li class="nav-item ">
          <a class="nav-link" href="http://localhost:8032/Diaster_Management_Hackathon/Control.jsp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
		<li class="nav-item active">
          <a class="nav-link" href="Control.jsp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>All Places</span>
          </a>
        </li>
       
      </ul>

      <div id="content-wrapper">

      

          <!-- DataTables Example -->
	 

    <div id="map"></div>


	  
      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="Logout">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.48.0/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.48.0/mapbox-gl.css' rel='stylesheet' />
    <style>
    </style>

    <script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.3.0/mapbox-gl-geocoder.min.js'></script>
    <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.3.0/mapbox-gl-geocoder.css' type='text/css' />

    <script>

       var saved_markers = [77.216721,28.644800];
        var user_location = [77.216721,28.644800];
        
        mapboxgl.accessToken = 'pk.eyJ1Ijoic2Fwc2F3ZWIiLCJhIjoiY2pzZml4M2w2MDNiNDRhbDU5dGplNXZ0YSJ9.RMs9l2zC73gSH3rDNCyb2g';
        var map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v9',
            center: user_location,
            zoom: 10
        });
        //  geocoder here
        var geocoder = new MapboxGeocoder({
            accessToken: mapboxgl.accessToken,
            // limit results to Australia
            //country: 'IN',
        });

        var marker ;

        // After the map style has loaded on the page, add a source layer and default
        // styling for a single point.
        map.on('load', function() {
           addMarker(user_location,'load');
            add_markers(saved_markers);

            // Listen for the `result` event from the MapboxGeocoder that is triggered when a user
            // makes a selection and add a symbol that matches the result.
            geocoder.on('result', function(ev) {
                alert("GetSaved.com");
                console.log(ev.result.center);

            });
        });
        map.on('click', function (e) {
            marker.remove();
            addMarker(e.lngLat,'click');
            //console.log(e.lngLat.lat);
            document.getElementById("lat").value = e.lngLat.lat;
            document.getElementById("lng").value = e.lngLat.lng;

        });

        function addMarker(ltlng,event) {

            if(event === 'click'){
                user_location = ltlng;
            }
            marker = new mapboxgl.Marker({draggable: true,color:"#d02922"})
                .setLngLat(user_location)
                .addTo(map)
                .on('dragend', onDragEnd);
        }
        function add_markers(coordinates) {

            var geojson = (saved_markers == coordinates ? saved_markers : '');

            console.log(geojson);
            // add markers to map
            geojson.forEach(function (marker) {
                console.log(marker);
                // make a marker for each feature and add to the map
                new mapboxgl.Marker()
                    .setLngLat(marker)
                    .addTo(map);
            });

        }

        function onDragEnd() {
            var lngLat = marker.getLngLat();
            document.getElementById("lat").value = lngLat.lat;
            document.getElementById("lng").value = lngLat.lng;
            console.log('lng: ' + lngLat.lng + '<br />lat: ' + lngLat.lat);
        }

        $('#signupForm').submit(function(event){
            event.preventDefault();
            var lat = $('#lat').val();
            var lng = $('#lng').val();
        //    var url = 'locations_model.php?add_location&lat=' + lat + '&lng=' + lng;
            $.ajax({
                url: url,
                method: 'GET',
                dataType: 'json',
                success: function(data){
                    alert(data);
                    location.reload();
                }
            });
        });

        document.getElementById('geocoder').appendChild(geocoder.onAdd(map));

    </script>

</body></html>