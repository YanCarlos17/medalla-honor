@extends('layouts.app')

@section('title','Perfil')

@section('content')
<div class="container">
    <header class="header">
        
    </header>

    <main>
        <h1>Perfil</h1>
        <div class="profile">
            <figure class="profile_image">
                <img src="" alt="">
                <figcaption class="profile__position">Posición nacional #{{$user->national_position}}</figcaption>
            </figure>
            
            <p class="profile__info">
                {{ $user->name }}<br>
                Mayorista<br>
                <a href="{{ route('branch-ofice') }}">Mis sucursales</a>
            </p>
        </div>
        <div class="score">
            <h2 class="score__title">Puntaje por categorías</h2>
            <div class="score__category">
                <h3 class="score__subtitle">Resultados</h3>
                <ul>
                    <li>Efectividad <span>100 pts</span></li>
                    <li>Surtido recomendado <span>250 pts</span></li>
                    <li>Evacuación <span>300pts</span></li>
                </ul>
                <h3 class="score__subtitle">Ejecución</h3>
                <ul>
                    <li>Codificación <span>100 pts</span></li>
                    <li>Planes especiales <span>250 pts</span></li>
                </ul>
                <h3 class="score__subtitle">ITT</h3>
                <ul>
                    <li>ITT <span>100 pts</span></li>
                </ul>
            </div>
        </div>

    </main>
</div>
@stop