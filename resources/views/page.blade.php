@extends('layouts.frontend')

@if($page->uri != '/')
@section('title', $page->title)
@endif

@section('content')
    @if($page->view)
        {!! $page->view->render() !!}
    @else
        @include('templates.home')
    @endif
@endsection
