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

            <div class="profile__image">
                <i class="fas fa-user"></i>
            </div>

            <p class="profile__info">
                Nombre:&nbsp;<span>{{ $user->name }}</span><br>
                Ciudad:&nbsp;<span>{{--{{ $city->name }}--}}???</span><br>
                Posición nacional:&nbsp;<span>{{$user->national_position}}</span><br>
            @foreach( $user->specializations as $specialization )
                <span>{{$specialization->name}}</span>
            @endforeach
                <br>
                <a href="{{ route('branch-ofice') }}">Mis sucursales</a>
                {{-- <p class="profile__position">Posición nacional #{{$user->national_position}}</p> --}}
            </p>
            

        </div>
        <div class="score">
            <h2 class="score__title">Puntaje por categoría</h2>

            <table class="profile-table">
                <tr>
                    <td class="profile-td td1">Efectividad</td>
                    <td class="profile-td td2"><span>100 pts</span></td>
                </tr>
                <tr>
                    <td class="profile-td td1">Surtido recomendado</td>
                    <td class="profile-td td2"><span>250 pts</span></td>
                </tr>
                <tr>
                    <td class="profile-td td1">Evacuación</td>
                    <td class="profile-td td2"><span>300pts</span></td>
                </tr>
            </table>
        </div>

    </main>
</div>
@stop