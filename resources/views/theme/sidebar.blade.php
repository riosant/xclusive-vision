<!-- ========== Left Sidebar ========== -->
<div class="main-menu">
    <!-- Brand Logo -->
    <div class="logo-box">
        <!-- Brand Logo Light -->
        <a href="" class="logo-light">
            <img src="{{asset('images/logo.png')}}" alt="logo" class="logo-lg" height="28">
            <img src="{{asset('images/logo.png')}}" alt="small logo" class="logo-sm" height="28">
        </a>

        <!-- Brand Logo Dark -->
        <a href="" class="logo-dark">
            <img src="{{asset('images/logo.png')}}" alt="dark logo" class="logo-lg" height="28">
{{--            <img src="{{asset('images/logo.png')}}" alt="small logo" class="logo-sm" height="28">--}}
        </a>
    </div>

    <!--- Menu -->
    <div data-simplebar>
        <ul class="app-menu">

            <li class="menu-title">Menu</li>

            <li class="menu-item">
                <a href="{{route('dashboard')}}" class="menu-link waves-effect waves-light">
                    <span class="menu-icon"><i class="bx bx-home-smile"></i></span>
                    <span class="menu-text"> Dashboards </span>
                    {{--<span class="badge bg-primary rounded ms-auto">01</span>--}}
                </a>
            </li>

            <li class="menu-title">Custom</li>

            <li class="menu-item">
                <a href="{{route('users.list')}}" class="menu-link waves-effect waves-light">
                    <span class="menu-icon"><i class="fas fa-users"></i></span>
                    <span class="menu-text"> Users </span>
                </a>
            </li>
            <li class="menu-item">
                <a href="{{route('agents.list')}}" class="menu-link waves-effect waves-light">
                    <span class="menu-icon"><i class="fas fa-users"></i></span>
                    <span class="menu-text"> Agents </span>
                </a>
            </li>
        </ul>
    </div>
</div>
