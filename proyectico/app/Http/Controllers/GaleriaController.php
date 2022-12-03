<?php

namespace App\Http\Controllers;

use App\Models\Galeria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class GaleriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos['Galeria']=Galeria::all();
        return view('Galerias.index', $datos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Galerias.crear');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datosGaleria=request()->except('_token');
        if ($request->hasFile('Imagen')){
            $datosGaleria['Imagen']=$request->file('Imagen')->store('uploads','public');
        }
        Galeria::insert($datosGaleria);
        
        return redirect('Galeria');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Galeria  $galeria
     * @return \Illuminate\Http\Response
     */
    public function show(Galeria $galeria)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Galeria  $galeria
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $datos=Galeria::findOrFail($id);
        return view('Galerias.editar', compact('datos'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Galeria  $galeria
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $datos=request()->except(['_token','_method','Enviar']);
        if ($request->hasFile('Imagen')){
            $dato=Galeria::findOrFail($id);
            Storage::delete('public/'.$dato->Imagen);
            $datos['Imagen']=$request->file('Imagen')->store('uploads','public');
        }
        Galeria::where('id','=',$id)->update($datos);
        return redirect('Galeria');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Galeria  $galeria
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $dato=Galeria::findOrFail($id);
        Storage::delete('public/'.$dato->Imagen);
        Galeria::destroy($id);
        return redirect('Galeria');
    }
}
