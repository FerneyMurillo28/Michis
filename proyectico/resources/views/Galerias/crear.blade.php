<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        *{
            padding: 10px;
        }
        body{
            background:rgb(232, 232, 247);
        }
        .boton{
            margin-top: 10px;
        }
    </style>
    <title>Crear</title>
</head>
<body>
    <form action="{{ url('/Galeria') }}" method="post" enctype="multipart/form-data">
        @csrf
        <label for="Nombre" class="form-label">Nombre</label>
        <input type="text" name="Nombre" class="form-control"><br>
        <label for="Imagen" class="form-label">Imagen</label>
        <input type="file" name="Imagen" class="form-control"><br>
        <label for="Informacion" class="form-label">Informacion</label>
        <textarea name="Informacion"cols="30" rows="10" class="form-control"></textarea>
        <input type="submit" value="Enviar" class="btn btn-dark boton">
    </form>
    <a href="/Galeria"><button class="btn btn-dark boton">Regresar</button></a>
</body>
</html>