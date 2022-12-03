@extends('layouts.app')

@section('content')
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        body{
            font-family: 'Nunito', sans-serif;
            background:rgb(232, 232, 247);
        }
        .margen{
            margin-bottom: 10px;
        }
    </style>
</head>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9 margen">
            <a href="/Galeria"><button class="btn btn-dark">Galeria Completa</button></a>
            <a href="/Galeria/create"><button class="btn btn-dark">Formulario de Creacion</button></a>
        </div>
        <div class="row">
            <p class="col-sm-5">En esta galeria podra encontrar informacion de diferentes razas de gatos,informacion como nombre de la raza, imagen de referencia e informacion de su apariencia</p>
            <img class="col-sm-4" src="https://imgs.search.brave.com/-CNM4mPQHEBc4c3IldM6zk417kzdVy_CsbHA6u-rj4E/rs:fit:1000:1200:1/g:ce/aHR0cHM6Ly9pbWcu/YmxvZ3MuZXMvYW5l/eG9tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDE5LzA4L2dhdG8t/My5qcGc" >
        </div>
    </div>
</div>
@endsection
