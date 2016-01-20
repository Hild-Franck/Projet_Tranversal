@extends('template')

@section('main')
    <h1>Titre</h1>
    <p>Bienvenue sur votre messagerie non instantanée</p>

    <form action="{{ route('login') }}" method="POST">
        {{ csrf_field() }}
        <input type="text"name="name">
        <button type="submit">Se connecter</button>
    </form>
@endsection