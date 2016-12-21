$("#sendalert-form").on("submit", function() {
  $.ajax({
    type: "POST",
    url: "php/sendlogic.php",
    data: $("#sendalert-form").serialize(),
    beforeSend: function(){
      $("#send-btn").text('Ingresando...');
      $("#send-btn").prop('disabled', true);
    },
    success: function(res){
      if(res){
        $("#sendres").html('<div class="alert alert-success" role="alert">Tu alerta ha sido enviada con éxito.</div>');
      } else {
        $("#sendres").html('<div class="alert alert-danger" role="alert">Un problema inesperado nos ha impedido procesar tu petición.</div>');
      }
      $("#send-btn").text('Enviar');
      $("#send-btn").prop('disabled', false);
    }
  });
  return false;
});

var x = document.getElementById("demo");
var dis = document.getElementById("distance");

function URLToArray(url) {
    var request = {};
    var arr = [];
    var pairs = url.substring(url.indexOf('?') + 1).split('&');
    for (var i = 0; i < pairs.length; i++) {
      var pair = pairs[i].split('=');

      //check we have an array here - add array numeric indexes so the key elem[] is not identical.
      if(endsWith(decodeURIComponent(pair[0]), '[]') ) {
          var arrName = decodeURIComponent(pair[0]).substring(0, decodeURIComponent(pair[0]).length - 2);
          if(!(arrName in arr)) {
              arr.push(arrName);
              arr[arrName] = [];
          }

          arr[arrName].push(decodeURIComponent(pair[1]));
          request[arrName] = arr[arrName];
      } else {
        request[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1]);
      }
    }
    return request;
}
function endsWith(str, suffix) {
    return str.indexOf(suffix, str.length - suffix.length) !== -1;
}

function getAddress(url){
  var obj = URLToArray(url);
  alert(obj["formatted_address"]);
}

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    $("#lat").val(position.coords.latitude);
    $("#lon").val(position.coords.longitude);

}

function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
        case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
        case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
        case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
    }
}
