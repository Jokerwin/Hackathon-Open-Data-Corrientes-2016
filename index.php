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
    if(window.innerWidth <= 500){
      window.location.replace("sendalertmobile.php");
    }
  </script>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Javascript settings -->
    <script type="text/javascript">
      $('#myTabs a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
      });
    </script>
    <script src="js/funcionario.js?1.0.0"></script>
    <script src="js/steal.js?1.0.0"></script>

    <section>
      <div class="row">

      <?php 
      include('left_bar.php');
      ?>

        <div style="background-color:#eceff1;left:264px;" class="col-sm-10">
          <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation" class="active"><a href="#alerta_general" aria-controls="alerta_general" role="tab" data-toggle="tab">Vientos</a></li>
              <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Sequías</a></li>
              <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Sismos</a></li>
              <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Inundaciones</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane active" id="alerta_general">
                <div style="margin-top:20px;" class="col-sm-12">
                  <?php

                    $nombre = 'Juan';
                    $direccion = 'Corrientes 1041';
                    $necesidad = 'Agua';

                    $con = mysqli_connect('localhost','root','','db_hack');
                    $sql = "SELECT * FROM db_datosalerta WHERE categoria='1'";

                    if($res = $con->query($sql)){
                      echo '<div class="row active-with-click">';
                      while($obj = $res->fetch_assoc()){
                        echo '
                          <div class="col-md-4 col-sm-6 col-xs-12">
                              <article class="material-card Red">
                                  <h2>
                                      <span>' . $obj['nombre'] . '</span>
                                      <strong>
                                          <i class="fa fa-fw fa-star"></i>
                                          ' . $obj['direccion'] . '
                                      </strong>
                                  </h2>
                                  <div class="mc-content">
                                      <div style="padding:40px;background-color:#0099cc;" class="img-container">
                                          <img class="center-block img-responsive" src="img/1.png">
                                      </div>
                                      <div class="mc-description">
                                       ' . $obj['necesidad'] . '
                                      </div>
                                  </div>
                                  <a class="mc-btn-action">
                                      <i class="fa fa-bars"></i>
                                  </a>
                                  <div class="mc-footer">
                                      <h4>
                                          Foro de ayuda
                                      </h4>
                                      <a class="fa fa-fw fa-comments"></a>
                                  </div>
                              </article>
                          </div>';
                      }
                      echo '</div>';
                    } else {
                      echo 'Ahora mismo nadie necesita ayuda :D';
                    }
                   ?>
                </div>
              </div>
              <div role="tabpanel" class="tab-pane" id="profile">
                <div style="margin-top:20px;" class="col-sm-12">
                  <?php

                    $con = mysqli_connect('localhost','root','','db_hack');
                    $sql = "SELECT * FROM db_datosalerta WHERE categoria='2'";

                    if($res = $con->query($sql)){
                      echo '<div class="row active-with-click">';
                      while($obj = $res->fetch_assoc()){
                        echo '
                          <div class="col-md-4 col-sm-6 col-xs-12">
                              <article class="material-card Red">
                                  <h2>
                                      <span>' . $obj['nombre'] . '</span>
                                      <strong>
                                          <i class="fa fa-fw fa-star"></i>
                                          ' . $obj['direccion'] . '
                                      </strong>
                                  </h2>
                                  <div class="mc-content">
                                      <div style="padding:40px;background-color:#f1b136;" class="img-container">
                                          <img class="center-block img-responsive" src="img/2.png">
                                      </div>
                                      <div class="mc-description">
                                       ' . $obj['necesidad'] . '
                                      </div>
                                  </div>
                                  <a class="mc-btn-action">
                                      <i class="fa fa-bars"></i>
                                  </a>
                                  <div class="mc-footer">
                                      <h4>
                                          Foro de ayuda
                                      </h4>
                                      <a class="fa fa-fw fa-comments"></a>
                                  </div>
                              </article>
                          </div>';
                      }
                      echo '</div>';
                    } else {
                      echo 'Ahora mismo nadie necesita ayuda :D';
                    }
                   ?>
                </div>
              </div>
              <div role="tabpanel" class="tab-pane" id="messages">
                <div style="margin-top:20px;" class="col-sm-12">
                  <?php

                    $con = mysqli_connect('localhost','root','','db_hack');
                    $sql = "SELECT * FROM db_datosalerta WHERE categoria='3'";

                    if($res = $con->query($sql)){
                      echo '<div class="row active-with-click">';
                      while($obj = $res->fetch_assoc()){
                        echo '
                          <div class="col-md-4 col-sm-6 col-xs-12">';
                          if(mysqli_num_rows($res) != 0){
                            echo '
                              <article class="material-card Red">
                                  <h2>
                                      <span>' . $obj['nombre'] . '</span>
                                      <strong>
                                          <i class="fa fa-fw fa-star"></i>
                                          ' . $obj['direccion'] . '
                                      </strong>
                                  </h2>
                                  <div class="mc-content">
                                      <div style="padding:40px;background-color:#fa5a5a;" class="img-container">
                                          <img class="center-block img-responsive" src="img/5.png">
                                      </div>
                                      <div class="mc-description">
                                       ' . $obj['necesidad'] . '
                                      </div>
                                  </div>
                                  <a class="mc-btn-action">
                                      <i class="fa fa-bars"></i>
                                  </a>
                                  <div class="mc-footer">
                                      <h4>
                                          Foro de ayuda
                                      </h4>
                                      <a class="fa fa-fw fa-comments"></a>
                                  </div>
                              </article>';
                            }else {
                        echo 'Ahora mismo nadie necesita ayuda :D';
                      }
                        echo '
                          </div>';
                      }
                      echo '</div>';
                    } else {
                      echo 'Ahora mismo nadie necesita ayuda :D';
                    }
                   ?>
                </div>
              </div>
              <div role="tabpanel" class="tab-pane" id="settings">
                <div style="margin-top:20px;" class="col-sm-12">
                  <?php

                    $nombre = 'Juan';
                    $direccion = 'Corrientes 1041';
                    $necesidad = 'Agua';

                    $con = mysqli_connect('localhost','root','','db_hack');
                    $sql = "SELECT * FROM db_datosalerta WHERE categoria='4'";

                    if($res = $con->query($sql)){
                      echo '<div class="row active-with-click">';
                      if(mysqli_num_rows($res) != 0){
                        while($obj = $res->fetch_assoc()){
                          echo '
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <article class="material-card Red">
                                    <h2>
                                        <span>' . $obj['nombre'] . '</span>
                                        <strong>
                                            <i class="fa fa-fw fa-star"></i>
                                            ' . $obj['direccion'] . '
                                        </strong>
                                    </h2>
                                    <div class="mc-content">
                                        <div style="padding:40px;background-color:#01b6ad;" class="img-container">
                                            <img class="center-block img-responsive" src="img/4.png">
                                        </div>
                                        <div class="mc-description">
                                         ' . $obj['necesidad'] . '
                                        </div>
                                    </div>
                                    <a class="mc-btn-action">
                                        <i class="fa fa-bars"></i>
                                    </a>
                                    <div class="mc-footer">
                                        <h4>
                                            Foro de ayuda
                                        </h4>
                                        <a class="fa fa-fw fa-comments"></a>
                                    </div>
                                </article>
                            </div>';
                        }
                        echo '</div>';
                      } else {
                        echo 'Ahora mismo nadie necesita ayuda :D';
                      }

                    } else {
                      echo 'Ahora mismo nadie necesita ayuda :D';
                    }
                   ?>
                </div>
              </div>
            </div>

        </div>
      </div>
    </section>
  </body>
</html>
