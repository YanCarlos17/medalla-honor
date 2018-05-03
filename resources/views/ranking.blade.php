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
        <h1>Ranking</h1>
        <div class="panels">
            <input class="panel__trigger" type="radio" value="nacional" name="ranking" id="nacional" checked><label for="nacional">Nacional</label>
            <input class="panel__trigger" type="radio" value="especializacion" name="ranking" id="especializacion"><label for="especializacion">Especialización</label>
            <label class="panel__trigger"><a href="{{ route('profile') }}">Perfil</a></label>
            <div class="panel" id="nacional-content">
                <div class="podiums">
                    <div class="podium">
                        <span class="podium__position">#1</span>
                        <img class="podium__img" src="" alt="">
                        <h3 class="podium__name">Kevyn Max</h3>
                        <p class="podium__score">1000 pts</p>
                    </div>
                    <div class="podium">
                        <span class="podium__position">#2</span>
                        <img class="podium__img" src="" alt="">
                        <h3 class="podium__name">Margareth Max</h3>
                        <p class="podium__score">1000 pts</p>
                    </div>
                    <div class="podium">
                        <span class="podium__position">#3</span>
                        <img class="podium__img" src="" alt="">
                        <h3 class="podium__name">Louis Done</h3>
                        <p class="podium__score">1000 pts</p>
                    </div>
                </div>
                <table class="table">
                    <tr>
                        <th>No</th>
                        <th>Nombre</th>
                        <th>Puntos</th>
                        <th>Ciudad</th>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Amanda Perea</td>
                        <td>350</td>
                        <td>Medellín</td>
                    </tr>
                </table>
            </div>
            <div class="panel" id="especializacion-content">
                <div class="panels">
                    <input class="panel__trigger" type="radio" value="tiendas" name="especialidad" id="tiendas" checked><label for="tiendas">Tiendas</label>
                    <input class="panel__trigger" type="radio" value="mayoristas" name="especialidad" id="mayoristas"><label for="mayoristas">Mayoristas</label>
                    <input class="panel__trigger" type="radio" value="supermercados" name="especialidad" id="supermercados"><label for="supermercados">Supermercados</label>
                    <div class="panel" id="tiendas-content">
                        <div class="podiums">
                            <div class="podium">
                                <span class="podium__position">#1</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Kevyn Max</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                            <div class="podium">
                                <span class="podium__position">#2</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Margareth Max</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                            <div class="podium">
                                <span class="podium__position">#3</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Louis Done</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                        </div>
                        <table class="table">
                            <tr>
                                <th>No</th>
                                <th>Nombre</th>
                                <th>Puntos</th>
                                <th>Ciudad</th>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Amanda Perea</td>
                                <td>350</td>
                                <td>Medellín</td>
                            </tr>
                        </table>  
                    </div>
                    <div class="panel" id="mayoristas-content">
                        <div class="podiums">
                            <div class="podium">
                                <span class="podium__position">#1</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Kevyn Max</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                            <div class="podium">
                                <span class="podium__position">#2</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Margareth Max</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                            <div class="podium">
                                <span class="podium__position">#3</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Louis Done</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                        </div>
                        <table class="table">
                            <tr>
                                <th>No</th>
                                <th>Nombre</th>
                                <th>Puntos</th>
                                <th>Ciudad</th>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Amanda Perea</td>
                                <td>350</td>
                                <td>Medellín</td>
                            </tr>
                        </table>  
                    </div>
                    <div class="panel" id="supermercados-content">
                        <div class="podiums">
                            <div class="podium">
                                <span class="podium__position">#1</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Kevyn Max</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                            <div class="podium">
                                <span class="podium__position">#2</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Margareth Max</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                            <div class="podium">
                                <span class="podium__position">#3</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">Louis Done</h3>
                                <p class="podium__score">1000 pts</p>
                            </div>
                        </div>
                        <table class="table">
                            <tr>
                                <th>No</th>
                                <th>Nombre</th>
                                <th>Puntos</th>
                                <th>Ciudad</th>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Amanda Perea</td>
                                <td>350</td>
                                <td>Medellín</td>
                            </tr>
                        </table>  
                    </div>
                </div> 
            </div>
        </div>
    </main>
</div>
@stop