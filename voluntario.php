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
              <p style="font-size:30px;font-family:Roboto;font-weight:500;">Registro de voluntario</p>
            </div>
          </div>
<div class="container">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="dni" class="col-sm-2 control-label">DNI</label>
                    <div class="col-sm-9">
                        <input type="text" id="dni" placeholder="Número de DNI" class="form-control" autofocus>
                        <span class="help-block">Número de DNI sin espacios, Ej: 38000000</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" id="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="dni" class="col-sm-2 control-label">Nombre</label>
                    <div class="col-sm-9">
                        <input type="text" id="nombre" placeholder="Nombre completo" class="form-control" autofocus>
                        <span class="help-block">Nombre completo, ejemplo: Juan Pérez</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-2 control-label">Fecha de nacimiento</label>
                    <div class="col-sm-9">
                        <input type="date" id="fechanacimiento" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="especialidad" class="col-sm-2 control-label">Especialidad</label>
                    <div class="col-sm-9">
                        <select id="especialidad" class="form-control">
                            <option>Medicina</option>
                            <option>Geriatría</option>
                            <option>Pediatría</option>
                            <option>Enfermería</option>
                            <option>Electricidad</option>
                            <option>Seguridad</option>
                            <option>Psicología</option>
                            <option>Alimentos</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label class="control-label col-sm-2">Sexo</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="radio">
								  <label><input type="radio" name="sexo">Hombre</label>
								</div>
								<div class="radio">
								  <label><input type="radio" name="sexo">Mujer</label>
								</div>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
				
				
                <div class="form-group">
                    <label class="control-label col-sm-2">Tipo de sangre</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
							<div class="radio">
							  <label><input type="radio" name="sangre">A+</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">A-</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">B+</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">B-</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">AB+</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">AB-</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">0+</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">0-</label>
							</div>
							<div class="radio">
							  <label><input type="radio" name="sangre">No soy donante</label>
							</div>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                
                <div class="form-group">
                    <label for="telefono" class="col-sm-2 control-label">Teléfono</label>
                    <div class="col-sm-9">
                        <input type="text" id="telefono" placeholder="Teléfono de contacto" class="form-control" autofocus>
                        <span class="help-block">Número de teléfono, ej: 362 4866521</span>
                    </div>
                </div>
				
                <div class="form-group">
                    <label for="formacion" class="col-sm-2 control-label">Formación</label>
                    <div class="col-sm-9">
                        <input type="text" id="formacion" placeholder="Formación específica" class="form-control" autofocus>
                        <span class="help-block">Por ejemplo: médico clínico, enfermero, psicólogo, etc</span>
                    </div>
                </div>
				
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-1">
                        <button type="submit" class="btn btn-primary btn-block">Registrar voluntario</button>
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