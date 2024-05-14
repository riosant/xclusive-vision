@extends("theme.master")
@push("title")
    Edit Agent
@endpush

@section('content')

    <form id="editUserForm" method="POST" action="{{ route('agents.update', $user->id) }}">
        @csrf
        @method('PUT')

        <div class="form-group row">
            <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

            <div class="col-md-6">
                <input id="name" type="text" class="form-control" name="name" value="{{ old('name', $user->name) }}"
                       required pattern="[a-zA-Z\s]+" title="Name must contain only alphabets and spaces">
            </div>
        </div>

        <div class="form-group row">
            <label for="email" class="col-md-4 col-form-label text-md-right">Email Address</label>

            <div class="col-md-6">
                <input id="email" type="email" class="form-control" name="email"
                       value="{{ old('email', $user->email) }}" required>
            </div>
        </div>

        <div class="form-group row">
            <label for="username" class="col-md-4 col-form-label text-md-right">Username</label>

            <div class="col-md-6">
                <input id="username" type="text" class="form-control" name="username"
                       value="{{ old('username', $user->username) }}" required>
            </div>
        </div>

        <div class="form-group row">
            <label for="mobile" class="col-md-4 col-form-label text-md-right">Mobile</label>

            <div class="col-md-6">
                <input id="mobile" type="text" class="form-control" name="mobile"
                       value="{{ old('mobile', $user->mobile) }}" pattern="[0-9]{10}"
                       title="Mobile number must be 10 digits">
            </div>
        </div>

        <div class="form-group row">
            <label for="dob" class="col-md-4 col-form-label text-md-right">Date of Birth</label>

            <div class="col-md-6">
                <input id="dob" type="date" class="form-control" name="dob" value="{{ old('dob', $user->dob) }}">
            </div>
        </div>

        <div class="form-group row">
            <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

            <div class="col-md-6">
                <input id="password" type="password" class="form-control" name="password" minlength="6">
            </div>
        </div>

        <input type="hidden" name="id" value="{{ $user->id }}">

        <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-4">
                <button type="submit" class="btn btn-info rounded-pill waves-effect waves-light">
                    Update
                </button>
            </div>
        </div>
    </form>

@endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#editUserForm').validate({
                rules: {
                    name: {
                        required: true,
                        alphabetsWithSpaces: true,
                        maxlength: 100
                    },
                    email: {
                        required: true,
                        email: true,
                        remote: {
                            url: "{{ route('users.checkUniqueEmail') }}",
                            type: "post",
                            data: {
                                email: function () {
                                    return $('#email').val();
                                },
                                id: {{ $user->id }}, // Pass the ID of the current user
                                _token: "{{ csrf_token() }}"
                            }
                        }
                    },
                    username: {
                        required: true,
                        remote: {
                            url: "{{ route('users.checkUniqueUsername') }}",
                            type: "post",
                            data: {
                                username: function () {
                                    return $('#username').val();
                                },
                                id: {{ $user->id }},
                                _token: "{{ csrf_token() }}"
                            }
                        }
                    },
                    password: {
                        minlength: 6
                    },
                    mobile: {
                        required: true,
                        digits: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    dob: {
                        date: true
                    }
                    // Add validation rules for other fields as needed
                },
                messages: {
                    name: {
                        required: "Please enter a name",
                        pattern: "Name must contain only alphabets and spaces",
                        maxlength: "Name must not exceed 100 characters"
                    },
                    email: {
                        required: "Please enter an email address",
                        email: "Please enter a valid email address",
                        remote: "Email is already in use"
                    },
                    username: {
                        required: "Please enter a username",
                        remote: "Username is already in use"
                    },
                    password: {
                        minlength: "Password must be at least 6 characters long"
                    },
                    mobile: {
                        pattern: "Mobile number must be 10 digits"
                    },
                    dob: {
                        date: "Please enter a valid date"
                    }
                    // Add error messages for other fields as needed
                }
            });

            $.validator.addMethod("alphabetsWithSpaces", function (value, element) {
                return this.optional(element) || /^[a-zA-Z\s]+$/.test(value);
            }, "Please enter only alphabets and spaces.");
        });
    </script>
@endsection
