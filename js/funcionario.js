function URLToArray(url) {
    var request = {};
    var pairs = url.substring(url.indexOf('?') + 1).split('&');
    for (var i = 0; i < pairs.length; i++) {
        if(!pairs[i])
            continue;
        var pair = pairs[i].split('=');
        request[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1]);
     }
     return request;
}

function getDirection(){
  var lat='44.4647452';
  var long='7.3553838';
  var ary = URLToArray("maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + long + "&sensor=true");
  
}
