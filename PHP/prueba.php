<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../estilos/estilosLogin.css">
    <link rel="stylesheet" href="../estilos/estilosVehiculos.css">
    <style>
        #container {
            display: block;
        }
        #contenedor {
            display: none;
        }
    </style>
</head>
<body>
    <div id="container">
        <form method="post" id="formulario">
            <label for="">Filtros</label>
            <select name="ciudad" id="ciudad">
                <option value="%">Todas las ciudades</option>
                <option value="Madrid">Madrid</option>
                <option value="Barcelona">Barcelona</option>
                <option value="Valencia">Valencia</option>
                <option value="Sevilla">Sevilla</option>
                <option value="Asturias">Asturias</option>
                <option value="Granada">Granada</option>
            </select>
            <select name="categoria" id="categoria">
                <option value="%">Todas las categorias</option>
                <option value="Coche">Coche</option>
                <option value="Moto">Moto</option>
                <option value="4x4">4x4</option>
                <option value="Furgoneta">Furgoneta</option>
                <option value="Deportivo">Deportivo</option>
                <option value="Caravana">Caravana</option>
                <option value="Limusina">Limusina</option>
            </select>

            <div class="inicio"><label for="guardar"><input type="checkbox" id="guardar">Mostrar solo los vehiculos disponibles</label></div>

            <button type="submit" name="enviar" id="aplicar">Aplicar filtros</button>
        </form>
    </div>
    
    <?php
    if(isset($_POST["enviar"])){
        //Guardamos valor del select
        $ciudad = $_POST['ciudad'];
        $categoria = $_POST['categoria'];

        //conexión
        //$conexion = mysqli_connect('sql202.epizy.com','epiz_34081714','nACDcClx2Nf8Acd','epiz_34081714_AlquilerVehiculos');
        $conexion = mysqli_connect('localhost','oscar','contraseña','AlquilerVehiculos');
        if($conexion -> connect_error){
            die('Error en la conexion');
        }
        //ejecutamos select
            $query = "SELECT Vehicles.brand, Vehicles.model, Parkings.name_parking, Modelos.imagen, Vehicles.nombre_tipo,
            CASE Vehicles.alquilado WHEN 1 THEN 'Ocupado' WHEN 0 THEN 'Disponible' END AS estado 
            FROM Vehicles, Distribucion, Parkings, Modelos 
            WHERE Vehicles.id_vehicle = Distribucion.id_vehicle AND Parkings.id_parking = Distribucion.id_parking
            AND Parkings.ciudad LIKE '$ciudad' AND Vehicles.nombre_tipo LIKE '$categoria' AND Vehicles.id_modelo = Modelos.id_modelo;";

        //ejecutamos consulta
        $consulta = mysqli_query($conexion, $query);
        if(!$consulta) {
            die("La consulta falló: ".mysqli_error($conexion));
        }
        echo "<div id='contenedor'>";
        echo "<h1 class='titulo'>Catalogo de vehículos</h1><a id='modificar'>Modificar filtros</a>";

        while ($fila = mysqli_fetch_array($consulta)) {
            echo "<div class='caja'>";
            echo "<img src='../imagenes/imagenes_vehiculos/".$fila["imagen"]."'> <p>Modelo: " . $fila["brand"] ." ". $fila["model"] . "</p>";
            echo "<div class='texto'>";
            echo "<p>Parking: " . $fila["name_parking"] . "</p><p>Tipo de vehiculo: " . $fila["nombre_tipo"] . "</p>";
            echo "<p>Disponibilidad: " . $fila["estado"] . "</p>";
            echo "</div>";
            echo "</div>";
            //echo "<tr><td>" . $fila["brand"] ." ". $fila["model"] . "</td><td>" . $fila["name_parking"] . "</td><td>" . $fila["nombre_tipo"] ."</td><td>". $fila["estado"] ."</td><tr>";
        }

        echo "</div>";
        mysqli_close($conexion);
    }
?>
<script>
    const form = document.getElementById('formulario');
    const container = document.getElementById('container');

    form.addEventListener('submit', function(event) {
        event.preventDefault(); // evita que el formulario se envíe
        const formData = new FormData(this); // obtiene los datos del formulario
        fetch('prueba.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(data => {
            container.style.display = 'none'; // oculta el contenedor
            console.log(data); // muestra la respuesta del servidor en la consola
        })
        .catch(error => console.error(error));
    });
</script>


</body>
</html>