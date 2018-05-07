@extends('layouts.app')

@section('title','Ranking')

@section('content')
@extends('layouts.nav')
<div class="container">
    
    
    <header class="header header2">
        <div class="header2__left">
            <p class="header2__parraph">
                Medalla de Honor <span>2018 <br>
                Premio a la excelencia</span>
            </p>
            <h1 class="header2__title">Ranking</h1>
        </div>
        <div class="header2__right">
            <img class="header2__medals" src="{{asset('../public/img/medals.png')}}" alt="">
        </div>
    </header>

    <main>
        
        <div class="panels">
            <input class="panel__trigger" type="radio" value="nacional" name="ranking" id="nacional" checked><label for="nacional">Nacional</label>
            <input class="panel__trigger" type="radio" value="especializacion" name="ranking" id="especializacion"><label for="especializacion">Especialización</label>
            <label class="panel__trigger"><a href="{{ route('profile') }}">Perfil</a></label>
            <div class="panel" id="nacional-content">
                <div class="podiums">
                @foreach($nationaltop as $index => $top)
                    <div class="podium">
                        <span class="podium__position">#{{ $index }}</span>
                        <img class="podium__img" src="{{asset('../public/img/oro.png')}}" alt="">
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
                                <img class="podium__img" src="{{asset('../public/img/oro.png')}}" alt="">
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
                                <img class="podium__img" src="{{asset('../public/img/plata.png')}}" alt="">
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
                                <img class="podium__img" src="{{asset('../public/img/oro.png')}}" alt="">
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