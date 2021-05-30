<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets-1/images/favicon.ico')}}">
    <link
        href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext"
        rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/font-awesome.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/chosen.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/color-01.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets-1/css/flexslider.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
          integrity="sha512-aEe/ZxePawj0+G2R+AaIxgrQuKT68I28qh+wgLrcAJOz3rxCP+TwrK5SPN+E5I+1IQjNtcfvb96HDagwrKRdBw=="
          crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.3/nouislider.min.css"
          integrity="sha512-KRrxEp/6rgIme11XXeYvYRYY/x6XPGwk0RsIC6PyMRc072vj2tcjBzFmn939xzjeDhj0aDO7TDMd7Rbz3OEuBQ=="
          crossorigin="anonymous"/>

    @livewireStyles
</head>
<body class="home-page home-01 ">

@yield('aa')


<script src="{{asset('assets-1/js/jquery-1.12.4.minb8ff.js?ver=1.12.4')}}"></script>
<script src="{{asset('assets-1/js/jquery-ui-1.12.4.minb8ff.js?ver=1.12.4')}}"></script>
<script src="{{asset('assets-1/js/bootstrap.min.js')}}"></script>
<script src="{{asset('assets-1/js/jquery.flexslider.js')}}"></script>
{{--<script src="{{asset('assets-1/js/chosen.jquery.min.js')}}"></script>--}}
<script src="{{asset('assets-1/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('assets-1/js/jquery.countdown.min.js')}}"></script>
<script src="{{asset('assets-1/js/jquery.sticky.js')}}"></script>
<script src="{{asset('assets-1/js/functions.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"
        integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ=="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"
        integrity="sha512-GDey37RZAxFkpFeJorEUwNoIbkTwsyC736KNSYucu1WJWFK9qTdzYub8ATxktr6Dwke7nbFaioypzbDOQykoRg=="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.3/nouislider.min.js"
        integrity="sha512-EnXkkBUGl2gBm/EIZEgwWpQNavsnBbeMtjklwAa7jLj60mJk932aqzXFmdPKCG6ge/i8iOCK0Uwl1Qp+S0zowg=="
        crossorigin="anonymous"></script>
<script src="https://cdn.tiny.cloud/1/p4pptjhh95fcpoac6sgbh4x8wmenowm62xoe7hh6od57qqz6/tinymce/5/tinymce.min.js"
        referrerpolicy="origin"></script>
@livewireScripts
@stack('scripts')
</body>
</html>
