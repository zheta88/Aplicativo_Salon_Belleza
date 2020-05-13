<?php


class NuevoModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function insert($datos){
       

        // insertar
        $query = $this->db->connect()->prepare('INSERT INTO personas (ROL_IDROL,CEDULA, NOMBRE, APELLIDOS,CELULAR,DIRECCION,CORREO,USUARIO,CONTRASENA) VALUES(:ROL_idROL,:Cedula, :Nombre, :Apellidos, :Celular, :Direccion, :Correo, :Usuario, :Contrasena)');
        try{
            $query->execute([
                'ROL_idROL'=>$datos['ROL_idROL'],
                'Cedula' => $datos['Cedula'],
                'Nombre' => $datos['Nombre'],
                'Apellidos' => $datos['Apellidos'],
                'Celular'=>$datos['Celular'],
                'Direccion'=>$datos['Direccion'],
                'Correo'=>$datos['Correo'],
                'Usuario'=>$datos['Usuario'],
                'Contrasena'=>$datos['Contrasena']
               
            ]);
            return true;
        }catch(PDOException $e){
            return false;
        }
        
        
    }
    public function getroles(){
        $item = array();
        try{
            $query = $this->db->connect()->prepare('SELECT * FROM rol where idROL !=1');

            $query->execute();
            $i=0;
            
            while($row = $query->fetch()){
              $item[$i]=$row;
              $i++;   
            }
            return $item;
        }catch(PDOException $e){
            return null;
        }
    }

    public function insertToken($correo){
        $token=$this->generarToken(10);
            $query = $this->db->connect()->prepare('UPDATE personas SET token=:token where Correo=:Correo');
            try{
                $query->execute([
                    'Correo'=>$correo,
                    'token'=>$token
                ]);
                return $query->rowCount()>0?$token:0;
            }catch(PDOException $e){
                return false;
            }
    }
    public function updateContrasena($contrasena,$token){
       
            $query = $this->db->connect()->prepare('UPDATE personas SET Contrasena=:Contrasena,token=null  where token=:token');
            try{
                $query->execute([
                    'Contrasena'=>md5($contrasena),
                    'token'=>$token
                ]);
                return $query->rowCount();
            }catch(PDOException $e){
                return false;
            }
    }
    private function  generarToken($n) { 
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'; 
        $randomString = ''; 
      
        for ($i = 0; $i < $n; $i++) { 
            $index = rand(0, strlen($characters) - 1); 
            $randomString .= $characters[$index];
        } 
      
        return $randomString; 
    }
}

?>