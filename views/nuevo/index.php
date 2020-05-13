<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/main.css">
    
    <title>Registro</title>
</head>
<body>

    <?php require 'views/header.php'; ?>

        <div class="container-fluid" style="text-align:center;">
            <div><?php echo $this->mensaje; ?></div>
            <div class="row">
				<div class="col-lg-12">		
					<div class="card">
						<div class="loginBox">
                            <img src="public/image/registro.jpg" class="avatar" alt="">
							<h2>Registro</h2>
                            <form action="<?php echo constant('URL'); ?>nuevo/crear" method="POST">
                                <label for="">Matrícula</label><br>
                                <input type="text" name="matricula" id=""><br>
                                <label for="">Nombre</label><br>
                                <input type="text" name="nombre" id=""><br>
                                <label for="">Apellido</label><br>
                                <input type="text" name="apellido" id=""><br>
                                <input type="submit" value="Crear nuevo alumno">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <?php require 'views/footer.php'; ?>
    
</body>
</html>