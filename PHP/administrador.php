<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #enlaces {
            display: flex;
            flex-direction: column;
        }
        a {
            border: 1px solid orangered;
            box-shadow: 0 0 4px rgba(106, 180, 255, 0.5);
            padding: 20px;
            text-decoration: none;
            color: black;
            font-size: 1.7em;
            font-weight: 500;
        }
        a:hover {
            color: orangered;
            font-weight: 600;
        }
        #container {
            width: 60%;
            text-align: center;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div id="container">
      <h1>Panel de administrador</h1>
        <div id="enlaces">
            <a href="#">Alta de vehiculo</a>
            <a href="#">Baja de vehiculo</a>
            <a href="#">Información de vehiculo</a>
            <a href="#">Información de cliente</a>
            <a href="#">Información del parking</a>
        </div>
        <div id="alta">
            <h1>Tramitar alta</h1>
            <?php
            $conexion = mysqli_connect('localhost','oscar','contraseña','AlquilerVehiculos');
            if($conexion -> connect_error){
                die('Error en la conexion');
            }
            $query = "SELECT Modelos.brand, Modelos.model FROM Modelos WHERE 1";
            $consulta = mysqli_query($conexion, $query);
            if(!$consulta) {
                die("La consulta falló: ".mysqli_error($conexion));
            }
            ?>
            <label for="existe">Seleccione marca y modelo en caso de que ya exista</label>
            <select name="existe" id="existe">
                <option value="0">--seleccione un modelo--</option>
                <?php
                    while ($fila = mysqli_fetch_array($consulta)) {
                        echo "<option>".$fila["brand"]." ".$fila["model"]."</option>";
                    };
                ?>
            </select>
        </div>
        <div id="baja">
            <h1>Tramitar baja</h1>
        </div>
    </div>
    
</body>
</html>