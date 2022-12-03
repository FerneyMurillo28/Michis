<form method="post" enctype="multipart/form-data">
    <label for="nombre" class="form-label">Nombre:</label>
    <input type="text" class="form-control" name="Nombre" value="{{ $datos->Nombre }}"><br>

    <label for="nombre" class="form-label">Informacion:</label>
    <input type="text" class="form-control" name="Informacion" value="{{ $datos->Informacion }}"><br>

    <label for="Imagen" class="form-label">Imagen:</label>
    <img width="100px" src="{{ asset('storage').'/'.$datos->Imagen }}">

    <input type="file" class="form-control" name="Imagen" value=""><br>
    <input type="submit" class="btn btn-dark">
    <a href="{{ url('/Galeria') }}"><input type="button" class="btn btn-dark" value="Regresar"></a>
</form>