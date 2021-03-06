<?php



class Consulta extends Controller{
    function __construct(){
        parent::__construct();
        $this->view->mensaje = "";
    }

    function render(){
        $personas = $this->view->datos = $this->model->get();
        $this->view->personas = $personas;
        $this->view->render('consulta/index');
    }

    function verPersona($param = null){
        $idpersona = $param[0];
        $persona = $this->model->getById($idpersona);

        session_start();
        $_SESSION["id_verPersona"] = $persona->Cedula;

        $this->view->persona = $persona;
        $this->view->render('consulta/detalle');
    }

    function actualizarPersona($param = null){
        session_start();
        $Cedula = $_SESSION["id_verPersona"];
        $ROL_idROL=$_POST['ROL_idROL'];
        $Nombre    = $_POST['Nombre'];
        $Apellidos  = $_POST['Apellidos'];
        $Celular =$_POST['Celular'];
        $Direccion=$_POST['Direccion'];
        $Correo=$_POST['Correo'];
        $Usuario=$_POST['Usuario'];
        $Contrasena=md5($_POST['Contrasena']);
     


        unset($_SESSION['id_verPersona']);

        if($this->model->update([ 'ROL_idROL'=>$ROL_idROL ,'Cedula' => $Cedula, 'Nombre' => $Nombre, 'Apellidos' => $Apellidos, 'Celular' =>$Celular, 'Direccion'=> $Direccion ,'Correo'=> $Correo,'Usuario'=>$Usuario, 'Contrasena'=> $Contrasena])){
            $persona = new Persona();
            $persona->ROL_idROL=$ROL_idROL;
            $persona->Cedula = $Cedula;
            $persona->Nombre = $Nombre;
            $persona->Apellidos = $Apellidos;
            $persona->Celular=$Celular;
            $persona->Direccion=$Direccion;
            $persona->Correo=$Correo;
            $persona->Usuario=$Usuario;
            $persona->Contrasena=$Contrasena;
            


            $this->view->persona = $persona;
            $this->view->mensaje = "Registro actualizado correctamente";
        }else{
            $this->view->mensaje = "No se pudo actualizar registro";
        }
        $this->view->render('consulta/detalle');
    }

    function eliminarPersona($param = null){
        $Cedula = $param[0];

        if($this->model->delete($Cedula)){
            $mensaje ="Registro eliminado correctamente";
          
        }else{
            $mensaje = "No se pudo eliminar al registro";
          
        }

       

        echo $mensaje;
    }
    
   
  
}
