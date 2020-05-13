<?php

class NuevoModel extends  Model {

    public  function __construct(){

        parent::__construct();
    }

    //método para insertar datos en mi bd
    public function insert($datos){
        $query=$this->db->connect()->prepare('INSERT INTO USUARIOS(CEDULA, NOMBRE, APELLIDO)VALUES (:cedula, :nombre, :apellido)');
        $query->execute(['cedula'=> $datos['cedula'],'nombre'=> $datos['nombre'],'apellido'=>$datos['apellido']]);

            echo "insertar datos";
    }

}

?>