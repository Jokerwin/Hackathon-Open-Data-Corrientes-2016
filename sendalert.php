<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Eco-Squad</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/index.css?1.0.0" rel="stylesheet">
    <link href="css/steal.css?1.0.0" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,500,900" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body style="background-color:#eceff1;" class="container-fluid">

  <script>
    if(window.innerWidth <= 10){
      window.location.replace("https://192.168.0.18/steal.html");
    }
  </script>

    <section>
      <div class="row">
        <div style="padding:0;background-color:#212121;width:264px;" class="navbar-left">
          <div style="height:158px !important;background-image:url('img/profile.png');" class="col-sm-12">
            <div style="margin-top:10px;" class="col-sm-12">
              <img class="center-block img-responsive img-circle" style="background-color:white;border:2px solid black;max-width:76px;height:auto;" src="img/profile-icon.png" alt="">
            </div>
            <div class="text-center col-sm-12">
              <p style="margin:0;">Aldana</p>
            </div>
            <div class="text-center col-sm-12">
              <p>1285 ecocoins</p>
            </div>
            <div class="col-sm-12">
              <button type="button" class="pull-right btn btn-danger btn-circle"><i style="color:black;font-size:17px;" class="glyphicon glyphicon-wrench"></i></button>
            </div>
          </div>
          <div style="margin-top:50px;padding:0;" class="col-sm-12">
            <div style="border-left:3px solid #eceff1;height:40px;background-color:#1c1c1c;" class="col-sm-12 text-center">
              <p style="margin:0;line-height:40px;color:#eceff1;font-family:Roboto;font-weight:500;">Inicio</p>
            </div>
            <div style="height:40px;" class="col-sm-12 text-center">
              <p style="margin:0;line-height:40px;color:#eceff1;font-family:Roboto;font-weight:300;">Misiones</p>
            </div>
            <div style="height:40px;" class="col-sm-12 text-center">
              <p style="margin:0;line-height:40px;color:#eceff1;font-family:Roboto;font-weight:300;">Top</p>
            </div>
            <div style="height:40px;" class="col-sm-12 text-center">
              <p style="margin:0;line-height:40px;color:#eceff1;font-family:Roboto;font-weight:300;">Salir</p>
            </div>
          </div>
        </div>
        <div style="background-color:#eceff1;" class="col-sm-offset-3 col-sm-9">

          <div class="col-sm-12">
            <form id="sendalert-form" method="post">
              <input class="hide" name="lon" id="lon" type="text">
              <input class="hide" name="lat" id="lat" type="text">

              <div class="row">
                <div style="padding:0;" class="col-sm-12 form-inline">
                  <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input name="nombre" id="nombre" type="text" class="form-control" placeholder="Nombre">
                  </div>
                  <div class="form-group">
                    <label for="direccion">Direccion</label>
                    <input name="direccion" id="direccion" type="text" class="form-control" placeholder="Direccion">
                  </div>
                  <div class="form-group">
                    <label for="categoria">Categoria</label>
                    <select name="categoria" id="categoria" class="form-control">
                      <option value="1">General</option>
                      <option value="2">Incendios</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                    </select>
                  </div>
                </div>
                <div style="padding:0;margin-top:20px;" class="col-sm-6 form-group">
                  <label for="necesidad">Necesidad</label>
                  <textarea name="necesidad" id="necesidad" class="form-control" rows="3"></textarea>
                </div>

              </div>

              <button id="send-btn" class="btn btn-default" type="submit">Enviar</button>

            </form>

            <div style="padding:0;margin-top:20px;" id="sendres" class="col-sm-9">

            </div>

          </div>

        </div>
      </div>
    </section>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Javascript settings -->
    <script src="js/sendalert.js?1.0.0"></script>
    <script type="text/javascript">
      getLocation();
    </script>
  </body>
</html>
