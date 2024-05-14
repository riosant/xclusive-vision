<!-- ========== Topbar Start ========== -->
<div class="navbar-custom">
    <div class="topbar">
        <div class="topbar-menu d-flex align-items-center gap-lg-2 gap-1">

            <!-- Brand Logo -->
            <div class="logo-box">
                <!-- Brand Logo Light -->
                <a href="{{route('dashboard')}}" class="logo-light">
                    <img src="{{asset('images/logo.png')}}" alt="logo" class="logo-lg" height="22">
                    <img src="{{asset('images/logo.png')}}" alt="small logo" class="logo-sm" height="22">
                </a>

                <!-- Brand Logo Dark -->
                <a href="{{route('dashboard')}}" class="logo-dark">
                    <img src="{{asset('images/logo.png')}}" alt="dark logo" class="logo-lg" height="22">
                    <img src="{{asset('images/logo.png')}}" alt="small logo" class="logo-sm" height="22">
                </a>
            </div>

            <!-- Sidebar Menu Toggle Button -->
            <button class="button-toggle-menu">
                <i class="mdi mdi-menu"></i>
            </button>
        </div>

        <ul class="topbar-menu d-flex align-items-center gap-4">

            <li class="nav-link" id="theme-mode">
                <i class="bx bx-moon font-size-24"></i>
            </li>

            <li class="dropdown">
                <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light"
                   data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                    <img src="{{asset('theme/dist/assets/images/users/avatar-4.jpg')}}" alt="user-image" class="rounded-circle">
                    <span class="ms-1 d-none d-md-inline-block">
                                    {{auth()->user()->name}}<i class="mdi mdi-chevron-down"></i>
                                </span>
                </a>
                <div class="dropdown-menu dropdown-menu-end profile-dropdown ">
                    <!-- item-->
                    <div class="dropdown-header noti-title">
                        <h6 class="text-overflow m-0">Welcome !</h6>
                    </div>
                    <div class="dropdown-divider"></div>

                    <!-- item-->
                    <a href="#" class="dropdown-item notify-item btn-logout">
                        <i class="fe-log-out"></i>
                        <span>Logout</span>
                    </a>
                    <form method="POST" action="{{route('logout')}}" id="form-logout">@csrf</form>
                </div>
            </li>
        </ul>
    </div>
</div>
<!-- ========== Topbar End ========== -->

@section('script')
<script>
    $(document).ready(function() {
        $(".btn-logout").on("click", function(e) {
            e.preventDefault();
            $("#form-logout").submit();
        })
    });
</script>
@endsection
