<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-menu-color="brand" data-topbar-color="light">

<head>
    <meta charset="utf-8"/>
    <title>Log In | {{config('app.name')}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Myra Studio" name="author"/>

    <!-- App favicon -->
    <link rel="shortcut icon" href="{{asset('theme/dist/assets/images/favicon.ico')}}">

    <!-- App css -->
    <link href="{{asset('theme/dist/assets/css/style.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('css/main.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('theme/dist/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css">
    <script src="{{asset('theme/dist/assets/js/config.js')}}"></script>
</head>

<body class="bg-primary d-flex justify-content-center align-items-center min-vh-100 p-5">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-4 col-md-5">
            <div class="card">
                <div class="card-body p-4">

                    <div class="text-center w-75 mx-auto auth-logo mb-4">
                        <a href="index.html" class="logo-dark">
                            <span><img src="assets/images/logo-dark.png" alt="" height="22"></span>
                        </a>

                        <a href="index.html" class="logo-light">
                            <span><img src="assets/images/logo-light.png" alt="" height="22"></span>
                        </a>
                    </div>

                    <form action="{{ route('login') }}" method="POST">
                        @csrf

                        <div class="form-group mb-3">
                            <label class="form-label" for="emailaddress">Email address</label>
                            <input class="form-control" type="email" name="email" id="emailaddress" required=""
                                   placeholder="Enter your email">
                        </div>


                        <div class="form-group mb-3">
                            <label class="form-label" for="password">Password</label>
                            <input class="form-control" type="password" name="password" required="" id="password"
                                   placeholder="Enter your password">
                        </div>

                        @error('email')
                        <div class="error">{{ $message }}</div>
                        @enderror
                        @error('password')
                        <div class="error">{{ $message }}</div>
                        @enderror

                        <div class="form-group mb-0 text-center">
                            <button class="btn btn-primary w-100" type="submit"> Log In</button>
                        </div>

                    </form>
                </div> <!-- end card-body -->
            </div>
            <!-- end card -->

        </div> <!-- end col -->
    </div>
    <!-- end row -->
</div>

<!-- App js -->
<script src="{{asset('theme/dist/assets/js/vendor.min.js')}}"></script>
<script src="{{asset('theme/dist/assets/js/app.js')}}"></script>

</body>

</html>
