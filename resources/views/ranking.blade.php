@extends('layouts.app')

@section('title','Ranking')

@section('content')
<div class="container">
    <div class="header-fixed"></div>
        <input type="checkbox" class="nav__checkbox" id="nav-toogle"/>
        <label for="nav-toogle" class="nav__button">
            <span class="nav__icon">&nbsp;</span>
        </label>
        <nav class="nav">
            <div class="nav__list">
                <a href="#" class="nav__item">Item 1</a>
                <a href="#" class="nav__item">Item 2</a>
                <a href="#" class="nav__item">Item 3</a>
                <a href="#" class="nav__item">Item 4</a>
                <a href="#" class="nav__item">Item 5</a>
            </div>
        </nav>
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
                @foreach($nationaltop as $index => $top)
                    <div class="podium">
                        <span class="podium__position">#{{ $index+1 }}</span>
                        <img class="podium__img" src="" alt="">
                        <h3 class="podium__name">{{ $top->name }}</h3>
                        <p class="podium__score">{{ $top->total_score }} pts</p>
                    </div>
                @endforeach
                </div>
                <table class="table">
                    <tr>
                        <th>No</th>
                        <th>Nombre</th>
                        <th>Puntos</th>
                    </tr>
                @foreach($national as $index => $position)
                    <tr>
                        <td>{{ $index + 4 }}</td>
                        <td>{{ $position->name }}</td>
                        <td>{{ $position->total_score }}</td>
                    </tr>
                @endforeach
                </table>
            </div>
            <div class="panel" id="especializacion-content">
                <div class="panels">
                    <input class="panel__trigger" type="radio" value="tiendas" name="especialidad" id="tiendas" checked><label for="tiendas">Tiendas</label>
                    <input class="panel__trigger" type="radio" value="mayoristas" name="especialidad" id="mayoristas"><label for="mayoristas">Mayoristas</label>
                    <input class="panel__trigger" type="radio" value="supermercados" name="especialidad" id="supermercados"><label for="supermercados">Supermercados</label>
                    <div class="panel" id="tiendas-content">
                        <div class="podiums">
                        @foreach($storetop as $index => $top)
                            <div class="podium">
                                <span class="podium__position">#{{ $index+1 }}</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">{{ $top->name }}</h3>
                                <p class="podium__score">{{ $top->score }} pts</p>
                            </div>
                        @endforeach
                        </div>
                        <table class="table">
                            <tr>
                                <th>No</th>
                                <th>Nombre</th>
                                <th>Puntos</th>
                            </tr>
                        @foreach($store as $index => $position)
                            <tr>
                                <td>{{ $index + 4 }}</td>
                                <td>{{ $position->name }}</td>
                                <td>{{ $position->score }}</td>
                            </tr>
                        @endforeach
                        </table>  
                    </div>
                    <div class="panel" id="mayoristas-content">
                        <div class="podiums">
                        @foreach($wholesalertop as $index => $top)
                            <div class="podium">
                                <span class="podium__position">#{{ $index+1 }}</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">{{ $top->name }}</h3>
                                <p class="podium__score">{{ $top->score }} pts</p>
                            </div>
                        @endforeach
                        </div>
                        <table class="table">
                            <tr>
                                <th>No</th>
                                <th>Nombre</th>
                                <th>Puntos</th>
                            </tr>
                        @foreach($wholesaler as $index => $position)
                            <tr>
                                <td>{{ $index + 4 }}</td>
                                <td>{{ $position->name }}</td>
                                <td>{{ $position->score }}</td>
                            </tr>
                        @endforeach
                        </table>
                    </div>
                    <div class="panel" id="supermercados-content">
                    <div class="podiums">
                        @foreach($supermarkettop as $index => $top)
                            <div class="podium">
                                <span class="podium__position">#{{ $index+1 }}</span>
                                <img class="podium__img" src="" alt="">
                                <h3 class="podium__name">{{ $top->name }}</h3>
                                <p class="podium__score">{{ $top->score }} pts</p>
                            </div>
                        @endforeach
                        </div>
                        <table class="table">
                            <tr>
                                <th>No</th>
                                <th>Nombre</th>
                                <th>Puntos</th>
                            </tr>
                        @foreach($supermarket as $index => $position)
                            <tr>
                                <td>{{ $index + 4 }}</td>
                                <td>{{ $position->name }}</td>
                                <td>{{ $position->score }}</td>
                            </tr>
                        @endforeach
                        </table> 
                    </div>
                </div> 
            </div>
        </div>
    </main>
</div>
@stop