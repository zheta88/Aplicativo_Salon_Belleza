<?php
class Main extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->render('main/index', null);
        // echo "<p>nuevo controlador main</p>";
    }

  
}

?>