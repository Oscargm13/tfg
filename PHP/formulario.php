<?php
    $conexion = mysqli_connect('localhost','oscar','contraseña','AlquilerVehiculos');

    if($conexion -> connect_error){
        die('Error en la conexion');
    }

    if($_SERVER["REQUEST_METHOD"] == "POST") {

        $nombre = $_POST["id"];
        $email = $_POST["mail"];
        $pass = $_POST["password"];
        $tlf = $_POST["tlf"];
        $ciudad = $_POST["ciudad"];

        $sql = "INSERT INTO Customers(name_customer, email, phone_number, domicilio, pass) 
        VALUES ('$nombre','$email','$tlf','$ciudad','$pass')";

        $consulta = mysqli_query($conexion, $sql);
        if(!$consulta) {
            die("La consulta falló: ".mysqli_error($conexion));
        }

    }

    mysqli_close($conexion);
?>