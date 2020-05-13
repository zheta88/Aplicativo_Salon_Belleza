<?php

class Errores extends Controller{

    function __construct(){

        parent::__construct();
        $this->view->mensaje="No existe la página solicitada";
        $this->view->render('errores/index');
       
   
    }
}
?> 