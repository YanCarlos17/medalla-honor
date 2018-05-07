@extends('layouts.app')

@section('title','Iniciar sesión')

@section('content')
<div class="container">
    <header class="header">
        <div class="header__medals">
            <img src="{{ asset('img/medal.png') }}" alt="" class="medal medal-silver">
            <img src="{{ asset('img/medal.png') }}" alt="" class="medal medal-bronze">
            <img src="{{ asset('img/medal.png') }}" alt="" class="medal medal-gold">
        </div>
        <h1 class="header__title text-center">Medalla de Honor</h1>
        <p class="header__parraph text-center">Premio a la excelencia</p>
    </header>
    <main>
        <form class="main__form form" action="{{ route('login_post') }}" method="post">
            {{ csrf_field() }}
            <input type="text" placeholder="Nombre de usuario" name="usuario" required>
            <input type="number" placeholder="Código de acceso" name="codigo" size="4" required>
            <button type="submit" class="btn btn__form" >Ingresar</button>
        </form>
    </main>
</div>
@stop