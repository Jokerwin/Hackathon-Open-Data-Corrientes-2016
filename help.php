<?php

include('header.php');

echo '
    <script defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhy52mYmb6XnnornJSaZXkv9FTGin8kBY&callback=initMap">
    </script>
<section>
      <div class="row">';

      include('left_bar.php');

      echo '
        <div style="background-color:#eceff1;" class="col-sm-9 col-sm-offset-3">
          <div style="margin-top:20px;margin-bottom:40px;" class="col-sm-12">
            <div class="col-sm-6">
              <p style="font-size:30px;font-family:Roboto;font-weight:500;">Alertas realizadas</p>
            </div>
            <div class="pull-right col-sm-1">
              <button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-danger btn-circle btn-lg"><i class="glyphicon glyphicon-plus"></i></button>
            </div>
          </div>
          <div class="col-sm-12">
          	<div id="map" style="height:600px;"></div>
          </div>
        </div>
      </div>
</section>';

$con = mysqli_connect('localhost','root','','db_hack');
$sql = "SELECT * FROM db_datosalerta";

echo '
<script type="text/javascript">
  var map;

  function initMap() {
    map = new google.maps.Map(document.getElementById(\'map\'), {
      center: {lat: -27.4810146, lng: -58.7999439},
      zoom: 13
    });';
    $res = $con->query($sql);
    while($obj = $res->fetch_assoc()){
    echo '
    marker = new google.maps.Marker({
      map: map,
      draggable: true,
      animation: google.maps.Animation.DROP,
      position: {lat: '.$obj["lat"].', lng: '.$obj["lon"].'}
    });';
  }

    echo '
  }
</script>
';

include('footer.php');

?>