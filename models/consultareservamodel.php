<?php

require 'models/reserva.php';

class Consultareservamodel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function get(){
        $items = [];
        try{
            $query = $this->db->connect()->query('SELECT servicios.Tipo_servicio AS SERVICIO,pc.Nombre AS EMPLEADO,pe.Nombre AS CLIENTE, RESERVAS.Fecha,reservas.Hora,RESERVAS.Precio,RESERVAS.Observaciones
            FROM RESERVAS
           INNER JOIN servicios ON servicios.idSERVICIOS=reservas.SERVICIOS_idSERVICIOS
           INNER JOIN personas as pc on pc.idPersonas=reservas.Cliente
           INNER JOIN personas as pe on pe.idPersonas=reservas.Empleado
           GROUP BY pc.Nombre,pe.Nombre,RESERVAS.Fecha');
            
            while($row = $query->fetch()){
                $item = new Reserva();
                // $item->idRESERVAS=$row['idRESERVAS'];
                $item->Cliente    = $row['CLIENTE'];
                $item->Empleado =$row['EMPLEADO'];
                $item->servicio = $row['SERVICIO'];  
                $item->fecha  = $row['Fecha'];
                $item->hora =$row ['Hora'];
                $item->observaciones =$row['Observaciones'];
                $item->precio =$row['Precio'];
                // var_dump($observaciones);
                // var_dump($SERVICIOS_idSERVICIOS);
                // var_dump($Cliente);
                array_push($items, $item);
            }
            return $items;
        }catch(PDOException $e){
            return [];
        }
    }

    public function getById($id){
        $item = new Reserva();
        try{
            $query = $this->db->connect()->prepare('SELECT * FROM reservas WHERE idRESERVAS= :id');
          
            $query->execute(['id' => $id]);
            
            while($row = $query->fetch()){
                $item->Cliente =$row['Cliente'];
                $item->Empleado   = $row['Empleado'];
                $item->servicio = $row['SERVICIOS_idSERVICIOS'];
                $item->fecha  = $row['Fecha'];
                $item->hora =$row['Hora'];
                $item->observaciones =$row['Observaciones'];
                $item->precio =$row['Precio'];
               
            }
            return $item;
        }catch(PDOException $e){
            return null;
        }
    }

    public function update($item){
        $query = $this->db->connect()->prepare('UPDATE reservas SET Cliente=:Cliente,
        SERVICIOS_idSERVICIOS = :SERVICIOS_idSERVICIOS, Empleado = :Empleado,
         Fecha =:Fecha, Hora = :Hora, Observaciones = :Observaciones,Precio =:Precio
        WHERE SERVICIOS_idSERVICIOS = :SERVICIOS_idSERVICIOS');
        try{
            $query->execute([
                'Cliente'=>$item ['Cliente'],
                'SERVICIOS_idSERVICIOS' => $item['SERVICIOS_idSERVICIOS'],
                'Empleado' => $item['Empleado'],
                'Fecha' => $item['Fecha'],
                'Hora' =>$item['Hora'],
                'Observaciones' =>$item ['Observaciones'],
                'Precio' =>$item ['Precio'],
            ]);
            return true;
        }catch(PDOException $e){
            return false;
        }
    }

    public function delete($id){
        $query = $this->db->connect()->prepare('DELETE FROM reservas WHERE idRESERVAS = :idRESERVAS');
        try{
            $query->execute([
                'idRESERVAS' => $id
            ]);
            return true;
        }catch(PDOException $e){
            return false;
        }
    }

  
}
?>