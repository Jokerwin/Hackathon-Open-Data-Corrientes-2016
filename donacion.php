<?php

include('header.php');

echo '
<section>
      <div class="row">';

      include('left_bar.php');

      echo '
        <div style="background-color:#eceff1;" class="col-sm-9 col-sm-offset-3">
          <div style="margin-top:20px;margin-bottom:40px;" class="col-sm-12">
            <div class="col-sm-6">
              <p style="font-size:30px;font-family:Roboto;font-weight:500;">Registro de donaciones</p>
            </div>
          </div>
<div class="container">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="especialidad" class="col-sm-2 control-label">Tipo de donación</label>
                    <div class="col-sm-9">
                        <select id="tipo" class="form-control">
                            <option>Higiene</option>
                            <option>Salud</option>
                            <option>Logística</option>
                            <option>Enfermería</option>
                            <option>Electricidad</option>
                            <option>Seguridad</option>
                            <option>Psicología</option>
                            <option>Alimentos</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label for="dni" class="col-sm-2 control-label">Descripción</label>
                    <div class="col-sm-9">
                        <input type="text" id="descripcion" placeholder="Descripción de la donación" class="form-control" autofocus>
                        <span class="help-block">Por ejemplo: colchón 1 plaza, papel higiénico, etc</span>
                    </div>
                </div>
				
                <div class="form-group">
                    <label for="telefono" class="col-sm-2 control-label">Cantidad</label>
                    <div class="col-sm-9">
                        <input type="text" id="cantidad" placeholder="Cantidad" class="form-control" autofocus>
                        <span class="help-block">Cantidad</span>
                    </div>
                </div>
				
                <div class="form-group">
                    <label for="telefono" class="col-sm-2 control-label">Destino de la donación</label>
                    <div class="col-sm-9">
                        <input type="text" id="cantidad" placeholder="Dirección de la donación" class="form-control" autofocus>
                        <span class="help-block">Destino de la donación, por ejemplo: San Lorenzo 1066</span>
                    </div>
                </div>
				
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-1">
                        <button type="submit" class="btn btn-primary btn-block">Registrar donación</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
        </div>
      </div>
</section>
';

include('footer.php');

?>