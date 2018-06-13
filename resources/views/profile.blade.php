@extends('layouts.app')
@extends('layouts.nav')
@section('title','Perfil')

@section('content')
<div class="container">
    <header class="header header2">
        <div class="header2__left">
            <p class="header2__parraph">
                Medalla de Honor <span>2018 <br>
                Premio a la excelencia</span>
            </p>
            <h1 class="header2__title">Perfil</h1>
        </div>
        <div class="header2__right">
            <img class="header2__medals" src="{{asset('../public/img/medals.png')}}" alt="">
        </div>
    </header>

    <main class="main">
       <div class="profile">
            <figure class="profile_image">
                <img src="" alt="">
                <figcaption class="profile__position">Posición nacional #{{$user->national_position}}</figcaption>
            </figure>
            
            <p class="profile__info">
            Nombre:&nbsp;{{ $user->name }}<br>
            @foreach( $user->specializations as $specialization )
                <span>{{$specialization->name}}</span>
            @endforeach
                <br>
                <a href="{{ route('branch-ofice') }}">Mis sucursales</a>
            </p>
        </div>
        <div class="score">
            <h2 class="score__title">Puntaje por categorías</h2>

            <table>
                <tr>
                    <td>Efectividad</td>
                    <td><span>100 pts</span></td>
                </tr>
                <tr>
                    <td>Surtido recomendado</td>
                    <td><span>250 pts</span></td>
                </tr>
                <tr>
                    <td>Evacuación</td>
                    <td><span>300pts</span></td>
                </tr>
            </table>



            <div class="score__category">
                <h3 class="score__subtitle">Resultados</h3>
                
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