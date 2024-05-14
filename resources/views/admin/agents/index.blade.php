@extends("theme.master")
@push("title")
    Users List
@endpush

@section('content')
    <div class="py-3 py-lg-4">
        <div class="row">
            <div class="col-lg-6">
                <h4 class="page-title mb-0">Agents</h4>
            </div>
            <div class="col-lg-6">
                <div class="d-none d-lg-block">
                    <ol class="breadcrumb m-0 float-end">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">{{config("app.name")}}</a></li>
                        <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Dashboard </a></li>
                        <li class="breadcrumb-item active">Agents</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="mb-3 d-flex justify-content-between">
        <a href="{{route('agents.add')}}"
           class="btn btn-info rounded-pill waves-effect waves-light d-flex align-items-center">
            Add New Agent <span class="btn-label-right"><i class="fas fa-plus-circle"></i></span>
        </a>
        <form class="search-box-form">
            <input type="text" name="q" value="{{request()->q}}" placeholder="Search" class="form-control" />
            <button type="submit" class="btn btn-info rounded-pill waves-effect waves-light"> <i class="fas fa-search"></i> </button>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-borderless mb-0 table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>Role</th>
                <th>Code</th>
                <th>Name</th>
                <th>Username</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Date of Birth</th>
                <th>Created At</th>
                <th>Updated At</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @php
                $serial = ($users->currentpage()-1) * $users->perpage() + 1;
            @endphp
            @foreach($users as $user)
                <tr>
                    <td>{{ $serial++ }}</td>
                    <td>{{ ucfirst($user->role) }}</td>
                    <td>{{ strtoupper($user->code) }}</td>
                    <td>{{ ucwords($user->name) }}</td>
                    <td>{{ $user->username }}</td>
                    <td><a href="mailto:{{ $user->email }}" class="text-secondary">{{ $user->email }}</a></td>
                    <td>{{ $user->mobile }}</td>
                    <td>{{ date('d M, Y', strtotime($user->dob)) }}</td>
                    <td>{{ date('d M, Y, h:m A', strtotime($user->created_at)) }}</td>
                    <td>{{ date('d M, Y, h:m A', strtotime($user->updated_at)) }}</td>
                    <td>
                        <button type="button" class="btn btn-info view-user rounded-pill waves-effect waves-light" data-user-id="{{ $user->id }}">
                            View
                        </button>
                        <a href="{{route('agents.edit', $user->id)}}" class="btn btn-info view-user rounded-pill waves-effect waves-light">
                            Edit
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <div class="float-end my-4"> {{ $users->links() }}</div>
    </div>

    <div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header p-3">
                    <h5 class="modal-title" id="userModalLabel">Agent Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body px-3 py-2">
                    <div class="row">
                        <div class="col-4"><strong>Name</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="name-placeholder"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-4"><strong>Username</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="username-placeholder"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-4"><strong>Email</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="email-placeholder"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-4"><strong>Mobile</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="mobile-placeholder"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-4"><strong>Date of Birth</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="dob-placeholder"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-4"><strong>Created At</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="created-at-placeholder"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-4"><strong>Updated At</strong></div>
                        <div class="col-1">:</div>
                        <div class="col-7"><span class="updated-at-placeholder"></span></div>
                    </div>
                </div>
                <div class="modal-footer p-3">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
        <script>
            $(document).ready(function () {
                $('.view-user').click(function () {
                    var userId = $(this).data('user-id');
                    $.ajax({
                        url: "{{ route('users.getUser') }}",
                        method: 'POST',
                        data: { userId: userId, _token: "{{ csrf_token() }}" },
                        success: function (response) {
                            // Update modal content with fetched data
                            $('.name-placeholder').text(response.name);
                            $('.username-placeholder').text(response.username);
                            $('.email-placeholder').text(response.email);
                            $('.mobile-placeholder').text(response.mobile);
                            $('.dob-placeholder').text(response.dob);
                            $('.created-at-placeholder').text(response.created_at);
                            $('.updated-at-placeholder').text(response.updated_at);

                            // Show the modal
                            $('#userModal').modal('show');
                        },
                        error: function (xhr, status, error) {
                            // Handle errors
                            console.error(xhr.responseText);
                        }
                    });
                });
            });
        </script>
@endsection

