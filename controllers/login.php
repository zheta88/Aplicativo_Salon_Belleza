<?php

class Login extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->mensaje = "";
        $this->view->render('login/index'); 
   
    }

    function render(){
       //$this->view->render('nuevo/index');
    }

    
}


?>