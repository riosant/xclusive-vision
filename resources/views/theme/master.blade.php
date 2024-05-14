<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-menu-color="brand" data-topbar-color="light">

<head>
    <meta charset="utf-8"/>
    <title>@stack("title") - {{config('app.name')}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Myra Studio" name="author"/>
    <link rel="shortcut icon" href="{{asset('theme/dist/assets/images/favicon.ico')}}">
    <link href="{{asset('theme/dist/assets/libs/morris.js/morris.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('theme/dist/assets/css/style.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('theme/dist/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('css/main.css')}}" rel="stylesheet" type="text/css">
    <script src="{{asset('theme/dist/assets/js/config.js')}}"></script>
    @yield("style")
</head>

<body>

<!-- Begin page -->
<div class="layout-wrapper">

    @include("theme.sidebar")

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="page-content">

        @include("theme.header")

        <div class="px-3">

            <!-- Start Content-->
            <div class="container-fluid">
                @yield('content')
            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        @include("theme.footer")
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->

</div>
<!-- END wrapper -->

<script src="{{asset('theme/dist/assets/js/vendor.min.js')}}"></script>
<script src="{{asset('theme/dist/assets/js/app.js')}}"></script>
<script src="{{asset('theme/dist/assets/libs/jquery-knob/jquery.knob.min.js')}}"></script>
<script src="{{asset('theme/dist/assets/libs/jquery-sparkline/jquery.sparkline.min.js')}}"></script>
<script src="{{asset('theme/dist/assets/libs/morris.js/morris.min.js')}}"></script>
<script src="{{asset('theme/dist/assets/libs/raphael/raphael.min.js')}}"></script>
<script src="{{asset('theme/dist/assets/js/pages/dashboard.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
@yield("script")
<script>localStorage.setItem("data-bs-theme", "light");</script>

</body>

</html>
