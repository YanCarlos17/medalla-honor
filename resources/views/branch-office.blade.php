@extends('layouts.app')

@section('title','Ranking')

@section('content')

<div class="container">
<header class="header">
        <div class="medals">
            <img src="" alt="" class="medal medal-gold">
            <img src="" alt="" class="medal medal-silver">
            <img src="" alt="" class="medal medal-bronze">
        </div>
    </header>
    @extends('layouts.nav')
    <main>
        <h1>Mis sucursales</h1>
        <div class="tabs">
        @foreach( $branchoffices as $branchoffice)
            <div class="tab">
                <input id="brandoffice-{{$branchoffice->id}}" type="radio" name="brandoffice">
                <label for="brandoffice-{{$branchoffice->id}}">{{$branchoffice->name}}</label>
                <div class="tab-content">
                    <div class="score">
                        <h2 class="score__title">Puntaje por categorías</h2>
                        <div class="score__category">
                            <h3 class="score__subtitle">Resultados</h3>
                            <ul>
                                <li>Efectividad <span>{{ $branchoffice->scoreEfectivity->score }} pts</span></li>
                                <li>Surtido recomendado <span>{{ $branchoffice->scoreAssortment->score }} pts</span></li>
                                <li>Evacuación <span>{{ $branchoffice->scoreMovement->score }} pts</span></li>
                            </ul>
                            <h3 class="score__subtitle">Ejecución</h3>
                            <ul>
                                <li>Codificación <span>{{ $branchoffice->scoreCodification->score }} pts</span></li>
                                <li>Planes especiales <span>{{ $branchoffice->scoreSpecialPlans->score }} pts</span></li>
                            </ul>
                            <h3 class="score__subtitle">ITT</h3>
                            <ul>
                                <li>ITT <span>{{ $branchoffice->scoreITT->score }} pts</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
    </main>
</div>
@stop