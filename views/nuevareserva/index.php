<?include "models/nuevareservamodel.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/main.css">
    
    <title>Registro reserva</title>
</head>
<body>

    <?php require 'views/header.php'; ?>

        <div class="container-fluid" style="text-align:center;">
            <div><?php echo $this->mensaje; ?></div>
            <div class="row">
				<div class="col-lg-12">		
					<div class="card">
						<div class="loginBox">
                            <img src="public/image/agenda.jpg" class="avatar" alt="">
							<h2>Reservar</h2>
                            <form action="<?php echo constant('URL'); ?>nuevareserva/crear" method="POST">
								<div class="form-group">									
                            
                                       
                                <?php
										 $nuevareservamodel=new nuevareservamodel();
										 $opcionesServicio= $nuevareservamodel->getservicio(); 
									
									 
									 ?>

                                        <select name="SERVICIOS_idSERVICIOS" id="inputState" class="form-control">
										
                                            <option selected>Elige Servicio...</option>
											<?php foreach ($opcionesServicio as $elemento){
                                            echo '<option value="'.$elemento['idSERVICIOS'].'">'.$elemento['Tipo_servicio'].'</option>';
											 }?>
                                           


                                        </select>
                                          
                                               
								</div> 
                                <div class="form-group">
                                       
                                <?php
										 $nuevareservamodel=new nuevareservamodel();
										 $opcionesServicio= $nuevareservamodel->getempleado(); 
										//	 var_dump($opcionesRoles); 
									 
									 ?>

                                        <select name="Cliente" id="inputState" class="form-control">
										
                                            <option selected>Elige Empleado...</option>
											<?php foreach ($opcionesServicio as $elemento){
                                            echo '<option value="'.$elemento['idPersonas'].'">'.$elemento['Nombre'].'</option>';
											 }?>
                                           


                                        </select>
                                          
                                								
                            
                                      
                                               
								</div> 
                                <div class="form-group">
                                       
                                <?php
										 $nuevareservamodel=new nuevareservamodel();
										 $opcionesServicio= $nuevareservamodel->getcliente(); 
										//	 var_dump($opcionesRoles); 
									 
									 ?>

                                        <select name="Empleado" id="inputState" class="form-control">
										
                                            <option selected>Elige Cliente...</option>
											<?php foreach ($opcionesServicio as $elemento){
                                            echo '<option value="'.$elemento['idPersonas'].'">'.$elemento['Nombre'].'</option>';
											 }?>
                                           


                                        </select>
                                          									
                            
                                       
                                
                                               
								</div> 
                                
                                
                         	
								
								<div class="form-group">        
									<input type="date" class="form-control input-lg" name="Fecha" placeholder="Fecha" required>       
								</div>
                                <div class="form-group">        
									<input type="time" class="form-control input-lg" name="Hora" placeholder="Hora" required>       
								</div>
                                <div class="form-group">        
									<textarea class="form-control input-lg" name="Observaciones" placeholder="Observaciones" cols="40"rows="5"></textarea>       
								</div>
                                <div class="form-group">        
									<input type="number" class="form-control input-lg" name="Precio" placeholder="Precio" required>       
								</div>
								<div class="boton">							    
									<button type="submit" class="btn btn-success btn-block">Registrar</button>
								</div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <?php require 'views/footer.php'; ?>
    
</body>
</html>