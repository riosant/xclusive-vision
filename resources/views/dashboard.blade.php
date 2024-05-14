@extends("theme.master")
@push("title")
    Dashboard
@endpush

@section('content')

    <div class="py-3 py-lg-4">
        <div class="row">
            <div class="col-lg-6">
                <h4 class="page-title mb-0">Dashboard</h4>
            </div>
            <div class="col-lg-6">
                <div class="d-none d-lg-block">
                    <ol class="breadcrumb m-0 float-end">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">{{config("app.name")}}</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-6 col-xl-3">
            <div class="card">
                <div class="card-body">
                    <div class="mb-4">
                        {{--<span class="badge badge-soft-primary float-end">Daily</span>--}}
                        <h5 class="card-title mb-0">Total Registered Users</h5>
                    </div>
                    <div class="row d-flex align-items-center mb-4">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                {{$users}}
                            </h2>
                        </div>
                    </div>
                    <div class="progress shadow-sm" style="height: 5px;">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 57%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-xl-3">
            <div class="card">
                <div class="card-body">
                    <div class="mb-4">
                        {{--<span class="badge badge-soft-primary float-end">Daily</span>--}}
                        <h5 class="card-title mb-0">Total Registered Agents</h5>
                    </div>
                    <div class="row d-flex align-items-center mb-4">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                {{$agents}}
                            </h2>
                        </div>
                    </div>
                    <div class="progress shadow-sm" style="height: 5px;">
                        <div class="progress-bar bg-secondary" role="progressbar" style="width: 80%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-xl-3">
            <div class="card">
                <div class="card-body">
                    <div class="mb-4">
                        {{--<span class="badge badge-soft-primary float-end">Daily</span>--}}
                        <h5 class="card-title mb-0">Total Registered Admins</h5>
                    </div>
                    <div class="row d-flex align-items-center mb-4">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                {{$admins}}
                            </h2>
                        </div>
                    </div>
                    <div class="progress shadow-sm" style="height: 5px;">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 20%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
