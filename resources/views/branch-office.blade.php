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
    <main>
        <h1>Mis sucursales</h1>
        <div class="tabs">
            <div class="tab">
                <input id="brandoffice-1" type="radio" name="brandoffice">
                <label for="brandoffice-1">Sucursal uno</label>
                <div class="tab-content">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
                </div>
            </div>
            <div class="tab">
                <input id="brandoffice-2" type="radio" name="brandoffice">
                <label for="brandoffice-2">Sucursal dos</label>
                <div class="tab-content">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
                </div>
            </div>
            <div class="tab">
                <input id="brandoffice-3" type="radio" name="brandoffice">
                <label for="brandoffice-3">Sucursal tres</label>
                <div class="tab-content">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
                </div>
            </div>
        </div>
    </main>
</div>
@stop