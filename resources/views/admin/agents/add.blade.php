@extends('theme.master')

@section('content')
    <div id="form-add-user my-5">


        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form id="add-user-form" method="POST" action="{{ route('agents.store') }}">
            @csrf

            <div class="form-group">
                <label for="name">Name <span class="text-danger">*</span> </label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Name">
            </div>

            <div class="form-group">
                <label for="email">Email <span class="text-danger">*</span></label>
                <input type="email" name="email" id="email" class="form-control" placeholder="example@domain.com">
            </div>

            <div class="form-group">
                <label for="username">Username <span class="text-danger">*</span></label>
                <input type="text" name="username" id="username" class="form-control" placeholder="Username">
            </div>

            <div class="form-group">
                <label for="mobile">Mobile <span class="text-danger">*</span></label>
                <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Mobile Number">
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth <span class="text-danger">*</span></label>
                <input type="date" name="dob" id="dob" class="form-control" placeholder="Date of Birth">
            </div>

            <div class="form-group">
                <label for="password">Password <span class="text-danger">*</span></label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Password">

            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-info rounded-pill waves-effect waves-light">Submit</button>
            </div>
        </form>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#add-user-form').validate({
                rules: {
                    name: {
                        required: true,
                        alphabetsWithSpaces: true
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
                                _token: "{{ csrf_token() }}"
                            }
                        }
                    },
                    password: {
                        required: true,
                        minlength: 6
                    },
                    mobile: {
                        required: true,
                        digits: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    dob: {
                        required: true
                    }
                },
                messages: {
                    email: {
                        remote: "Email is already in use."
                    },
                    username: {
                        remote: "Username is already in use."
                    }
                },
                errorPlacement: function (error, element) {
                    error.appendTo(element.parent());
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $.validator.addMethod("alphabetsWithSpaces", function (value, element) {
                return this.optional(element) || /^[a-zA-Z\s]+$/.test(value);
            }, "Please enter only alphabets and spaces.");
        });
    </script>
@endsection
