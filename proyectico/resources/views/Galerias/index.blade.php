<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            padding: 10px;
            background:rgb(232, 232, 247);
        }
        .imagen{
            width: 100%;
            height: 100%;
            justify-content: center;
        }
        .bordes{
            border:5px solid rgb(194, 154, 79);

        }
        .margen{
            margin-bottom:10px; 
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lista</title>
</head>
<body class="container">
    <div class="row text-center borde">
        <a href="/Galeria/create" class="col-sm-7"><button class="btn btn-dark">Crear</button></a>
        <a href="/home" class="col-sm-3"><button class="btn btn-dark">Home</button></a>
    </div>

    <div class="container text-center ">
        <div class="row ">
            @foreach($Galeria as $galeria)
            <div class="bordes margen">
                <div class="row ">
                    <p class="col-sm-4">{{ $galeria->Nombre }}</p>
                    <img class="imagen col-sm-3 img-thumbnail rounded" src="{{ asset('storage').'/' .$galeria->Imagen }}" alt="Imagen">
                    <form action="{{ url('/Galeria/'.$galeria->id) }}" method="post" class="col-sm-1">
                        @csrf
                        {{  method_field('DELETE') }}
                        <input  class="btn btn-dark" type="submit" onclick="return confirm('¿Seguro de borrar este dato?')" value="Borrar">
                    </form>
                    <a href="{{ url('/Galeria/'.$galeria->id.'/edit') }}" class="col-sm-1"><button class="btn btn-dark ">Editar</button></a>
                </div>
                <div class="row">
                    <div class="col-xxl-1">
                        <p>{{ $galeria->Informacion }}</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</body>
</html>