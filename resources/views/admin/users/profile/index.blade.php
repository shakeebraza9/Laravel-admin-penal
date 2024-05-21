@extends('admin.layout')

@section('css')
<style>

</style>
@endsection
@section('content')

        <div class="sidebar-overlay" id="sidebar-overlay"></div>
        <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
        <div class="mobile-menu-handle"></div>
        <article class="content forms-page">
            <div class="title-block">
                <h3 class="title"> Profile</h3>
                
            </div>
            <section class="section">
               
                   
                    <div class="col-md-8">
                        <div class="card card-block sameheight-item">
                            <div class="title-block">
                                <h3 style="text-align: center" class="title">Profile Edit</h3>
                            </div>
                            <form action="{{URL::to('admin/users/profileupdate/'.Crypt::encryptString($user->id))}}" method="POST" role="form" enctype="multipart/form-data">
                                @csrf
                    
                                <div class="form-group @error('username') has-error @enderror">
                                    <label for="username" class="control-label" >Full Name</label>
                                    <input type="text" value="{{ $user->name }}" name="name" id="username" class="form-control boxed">
                                    @error('username')
                                        <span class="text-danger">{{ $message }}</span>
                                        <span class="fa fa-times form-control-feedback"></span>
                                    @enderror
                                </div>
                    
                                <div class="form-group @error('email') has-error @enderror">
                                    <label for="email" class="control-label">Email</label>
                                    <input type="email" value="{{ $user->email }}" name="email" id="email" class="form-control boxed" >
                                    @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                        <span class="fa fa-times form-control-feedback"></span>
                                    @enderror
                                </div>
                    
                                <div class="form-group @error('password') has-error @enderror">
                                    <label for="password" class="control-label">Password</label>
                                    <input type="password"  name="password" id="password" class="form-control boxed">
                                    @error('password')
                                        <span class="text-danger">{{ $message }}</span>
                                        <span class="fa fa-times form-control-feedback"></span>
                                    @enderror
                                </div>
                    
                                <div class="form-group @error('repassword') has-error @enderror">
                                    <label for="repassword" class="control-label">Retype Password</label>
                                    <input type="password" name="password_confirmation" id="repassword" class="form-control boxed">
                                    @error('repassword')
                                        <span class="text-danger">{{ $message }}</span>
                                        <span class="fa fa-times form-control-feedback"></span>
                                    @enderror
                                </div>
                    
                                <div class="form-group @error('profile') has-error @enderror">
                                    <label for="profile" class="control-label">Profile Image</label>
                                    <input type="file" name="profile" id="profile" class="form-control boxed">
                                    @error('profile')
                                        <span class="text-danger">{{ $message }}</span>
                                        <span class="fa fa-times form-control-feedback"></span>
                                    @enderror
                                </div>

                                <div id="imagePreview" class="mt-2">
                                    <img id="oldImage" src="{{ $user->path }}" alt="Old Image" style="max-width: 200px; cursor: pointer;">
                                </div>
                                @if(session('success'))
                                <div class="update-message">
                                    {{ session('success') }}
                                </div>
                                @endif
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Update Account</button>
                                <a href="{{ route('login') }}" type="button" class="btn btn-secondary btn-sm btn-block">Block level button</a>
                            </form>
                        </div>
                    </div>
                    <!-- Popup Container -->

            </section>
            

    </div>
</div>

<!-- Popup Container -->
<div id="imagePopup" class="image-popup">
    <span class="close-popup">&times;</span>
    <img class="popup-image" src="{{ $user->path }}" alt="Popup Image">
</div>
@endsection

@section('js')

@endsection