<?php

class Nuevo extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->mensaje = "";
        $this->view->render('nuevo/index'); 
   
    }

    function render(){
       // $this->view->render('nuevo/index');
    }

    function registrar(){
        $cedula = $_POST['cedula'];
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];

        $mensaje = "";

        if($this->model->insert(['cedula'=>$cedula,'nombre'=>$nombre,'apellido'=>$apellido])){
            $mensaje="Nuevo registro creado";
        }else{
            $mensaje="registro ya existe";
        }

        $this->view->mensaje=$mensaje;
        $this->render();
    }
}

?>