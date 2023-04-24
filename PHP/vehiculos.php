<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../estilos/estilosVehiculos.css">
    <script src="../js/vehiculos.js"></script>
</head>
<body>
    <button id="filtrar">Filtrar</button>
    <form method="post">
        <select name="ciudad" id="ciudad">
        <option value="0">--Seleccione una ciudad--</option>
        <option value="Madrid">Madrid</option>
        <option value="Barcelona">Barcelona</option>
        <option value="Valencia">Valencia</option>
        <option value="Sevilla">Sevilla</option>
        <option value="Asturias">Asturias</option>
        <option value="Granada">Granada</option>
    </select>
    <select name="categoria" id="categoria">
        <option value="0">--Seleccione una categoria--</option>
        <option value="1">Coche</option>
        <option value="2">Moto</option>
        <option value="3">4x4</option>
        <option value="4">Furgoneta</option>
        <option value="5">Deportivo</option>
        <option value="6">Caravana</option>
        <option value="7">Limusina</option>
    </select>
    </form>
   <?php
   $conexion = mysqli_connect('localhost','oscar','contraseña','AlquilerVehiculos');
   $query = "SELECT Vehicles.brand, Vehicles.model, Parkings.name_parking, Vehicles.nombre_tipo FROM Vehicles, Distribucion, Parkings 
   WHERE Vehicles.id_vehicle = Distribucion.id_vehicle AND Parkings.id_parking = Distribucion.id_parking;";

   if(isset($_POST['ciudad']) != 0){
    $query = "SELECT Vehicles.brand, Vehicles.model, Parkings.name_parking, Vehicles.nombre_tipo FROM Vehicles, Distribucion, Parkings 
    WHERE Vehicles.id_vehicle = Distribucion.id_vehicle AND Parkings.id_parking = Distribucion.id_parking
    AND Parkings.ciudad = 'Madrid';";
   }
    $conexion = mysqli_connect('localhost','oscar','contraseña','AlquilerVehiculos');
    $query = "SELECT Vehicles.brand, Vehicles.model, Parkings.name_parking, Vehicles.nombre_tipo FROM Vehicles, Distribucion, Parkings 
    WHERE Vehicles.id_vehicle = Distribucion.id_vehicle AND Parkings.id_parking = Distribucion.id_parking;";

    if($conexion -> connect_error)
        die('Error');
    
    $consulta = mysqli_query($conexion, $query);

    if(!$consulta) {
        die("La consulta falló: ".mysqli_error($conexion));
    }

    echo "<table>";
    echo "<tr><th>Modelo</th> <th>Parking</th> <th>Categoria</th>";

    while ($fila = mysqli_fetch_array($consulta)) {
        echo "<tr><td>" . $fila["brand"] ." ". $fila["model"] . "</td><td>" . $fila["name_parking"] . "</td><td>" . $fila["nombre_tipo"] ."</td><tr>";
    }

    echo "</table>";

    mysqli_close($conexion);
?> 
</body>
</html>
