@extends('layouts.app')

@section('title','Iniciar sesión')

@section('content')
<div class="container">
    <header class="header">
        <div class="medals">
            <img src="{{ asset('img/medal.png') }}" alt="" class="medal medal-silver">
            <img src="{{ asset('img/medal.png') }}" alt="" class="medal medal-bronze">
            <img src="{{ asset('img/medal.png') }}" alt="" class="medal medal-gold">
        </div>
        <h1 class="title text-center">Medalla de Honor</h1>
        <p class="text-center">Premio a la excelencia</p>
    </header>
    <main>
        <form class="form" action="{{ route('login_post') }}" method="post">
            {{ csrf_field() }}
            <input type="text" placeholder="Nombre de usuario" name="usuario">
            <input type="text" placeholder="Código de acceso" name="codigo">
            <button type="submit" class="btn" >Ingresar</button>
        </form>
    </main>
</div>
@stop