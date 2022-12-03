<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Alumno</title>
    <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/8158/8158519.png">
    <style>
        *{
            padding: 10px;
            background:rgb(232, 232, 247);
        }
    </style>
</head>
<body>
    <form action="{{ url('/Galeria/'.$datos->id) }}" method="post" enctype="multipart/form-data">
        @csrf
        {{ method_field('PATCH') }}
        @include('Galerias.form')
    </form>
</body>
</html>