@extends('admin.layout')

@section('css')
<style>

</style>
@endsection

@section('content')

<div class="content forms-page">
    <div class="title-block">
        <h3 class="title">New User</h3>
        <p class="title-description">Add New User Here</p>
    </div>
    <div class="subtitle-block">
        <h3 class="subtitle">Add User</h3>
    </div>
    <section class="section">
        <div class="row">
            <div class="col-md-8">
                <div class="card card-block sameheight-item">
                    <div class="title-block">
                        <h3 style="text-align: center" class="title">Add User Form</h3>
                    </div>
                    <form action="{{ route('userstore') }}" method="POST" role="form" enctype="multipart/form-data">
                        @csrf

                        <!-- Full Name -->
                        <div class="form-group">
                            <label for="username" class="control-label">Full Name</label>
                            <input type="text" name="name" id="username" class="form-control underlined" value="{{ old('username') }}">
                        </div>

                        <!-- Email -->
                        <div class="form-group">
                            <label for="email" class="control-label">Email</label>
                            <input type="email" name="email" id="email" class="form-control underlined" value="{{ old('email') }}">
                        </div>

                        <!-- Password -->
                        <div class="form-group">
                            <label for="password" class="control-label">Password</label>
                            <input type="password" name="password" id="password" class="form-control underlined">
                        </div>

                        <!-- Password Confirmation -->
                        <div class="form-group">
                            <label for="repassword" class="control-label">Retype Password</label>
                            <input type="password" name="password_confirmation" id="repassword" class="form-control underlined">
                        </div>

                        <!-- Profile Image -->
                        <div class="form-group">
                            <label for="profile" class="control-label">Profile Image</label>
                            <input type="file" name="profile" id="profile" class="form-control underlined">
                        </div>

                        <!-- Validation Errors -->
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-primary btn-lg btn-block">Create Account</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>


@endsection

@section('js')
    
@endsection