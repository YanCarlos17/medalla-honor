@extends('layouts.app')

@section('title','Perfil')

@section('content')
<div class="container">
    <header class="header">
        
    </header>

    
        <a href="{{route('ranking')}}">
            <div class="return">
                <span class="left-arrow">&nbsp;</span>
            </div>
        </a>

    <main>
        <h1>Perfil</h1>
        <div class="profile">
            <figure class="profile_image">
                <img src="" alt="">
                <figcaption class="profile__position">Posición nacional #2</figcaption>
            </figure>
            
            <p class="profile__info">
                {{ $user->name }}<br>
                Mayorista<br>
            </p>
        </div>
        <div class="score">
            <h2 class="score__title">Puntaje por categorías</h2>
            <div class="score__category">
                <h3 class="score__subtitle">Resultados</h3>

            </div>
        </div>

    </main>
</div>
@stop