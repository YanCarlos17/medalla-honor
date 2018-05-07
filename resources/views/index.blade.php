@extends('layouts.app')
@section('title','Iniciar sesión')
@section('content')
<div class="container">
    <header class="header">
        <div class="header__medals">
            <img src="{{asset('../public/img/medals.png')}}" alt="" class="medal medals">
        </div>
        <h1 class="header__title text-center">Medalla de Honor <span>2018</span></h1>
        <p class="header__parraph text-center">Premio a la excelencia</p>
    </header>
    <main>
        <form class="main__form form" action="{{route('login_post') }}" method="post">
            {{ csrf_field() }}
            <input class="form__input" type="text" placeholder="Nit:" name="usuario" required>
            <input class="form__input" type="number" placeholder="Código:" name="codigo" size="4" required>
            <span class="form__line">&nbsp;</span>
            <button type="submit" class="btn btn__form" >Ingresar</button>
        </form>
        
    </main>
</div>
@stop