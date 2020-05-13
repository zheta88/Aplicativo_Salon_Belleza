<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Registro</title>
</head>
<body>
   

    <div id="main">
        <h1 class="center">Registro</h1>

        <div class="center"><?php echo $this->mensaje; ?></div>

        <form action="<?php echo constant('URL'); ?>nuevo/registrar" method="POST">

            <p>
                <label for="matricula">Cedula</label><br>
                <input type="text" name="cedula" id="" required>
            </p>
            <p>
                <label for="nombre">Nombre</label><br>
                <input type="text" name="nombre" id="" required>
            </p>
            <p>
                <label for="apellido">Apellido</label><br>
                <input type="text" name="apellido" id="" required>
            </p>

            <p>
            <input type="submit" value="Ingresar registro">
            </p>

        </form>
    </div>

    <?php require 'views/footer.php'; ?>
</body>
</html>