<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Galeria</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Fonts -->
        <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <style>
            *{
                padding: 10px;
                
            }
        .margen{
            margin-top: 120px;
        }
        body {
            font-family: 'Nunito', sans-serif;
            background:rgb(232, 232, 247);
        }
        .hola{color:rgb(0, 0, 0);
            text-align: center;
        } 
        </style>
    </head>
    <body>
        <div class="margen">
            <div class="relative flex items-top justify-center min-h-screen sm:items-center py-4 sm:pt-0 ">
                <h1  class="hola">
                    Proyecto final laravel Galeria de razas de gatos
                </h1>
                <div class="container text-center"> 
                    @if (Route::has('login'))
                    <a href="{{ route('login') }}"><button class="btn btn-dark">Iniciar sesion</button></a>
                    <a href="{{ route('register') }}"><button class="btn btn-dark">Registrarse</button></a>
                    @endif
                </div>
            </div>
            <div class="hola">
                <p>Proyecto de laravel hecho por Ferney Murillo de la ficha ADSO 2502170</p>
                <p>Hecho en laravel con lenguaje php y html</p>
                <p>Estilos por bootstrap</p>
                <p>Informacion obtenida de zooplus "https://www.zooplus.es/magazine/gatos/razas-de-gatos"</p>
            </div>
        </div>
    </body>
</html>
