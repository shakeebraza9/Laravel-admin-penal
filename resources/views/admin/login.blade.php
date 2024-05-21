<!doctype html>
<html class="no-js" lang="en">
    
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title> ModularAdmin - Free Dashboard Theme | HTML Version </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.html">
        <!-- Place favicon.ico in the root directory -->
        <link rel="stylesheet" href="{{ asset('admin/css/vendor.css')}}">
        <link rel="stylesheet"  href="{{ asset('admin/css/app.css')}}">
        <!-- Theme initialization -->
        
    </head>
    <body>
        <div class="auth">
            <div class="auth-container">
                <div class="card">
                    <header class="auth-header">
                        <h1 class="auth-title">
                            <div class="logo">
                                <span class="l l1"></span>
                                <span class="l l2"></span>
                                <span class="l l3"></span>
                                <span class="l l4"></span>
                                <span class="l l5"></span>
                            </div> S-K STORE ADMIN PENAL</h1>
                    </header>
                    <div class="auth-content">
                        <p class="text-center">LOGIN TO CONTINUE</p>
                        <form id="login-form" action="{{ route('checkuserlogin') }}" method="POST" novalidate="">
                            <div class="form-group">
                                <label for="username">Username</label>
                                @csrf
                                <input type="email" class="form-control underlined" name="email" id="email" placeholder="Your email address" required> </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control underlined" name="password" id="password" placeholder="Your password" required> </div>
                            <div class="form-group">
                                <label for="remember">
                                    <input class="checkbox" id="remember" type="checkbox">
                                    <span>Remember me</span>
                                </label>
                                <a href="reset.html" class="forgot-btn pull-right">Forgot password?</a>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-block btn-primary">Login</button>
                            </div>
                            <div class="form-group">
                                <p class="text-muted text-center">Do not have an account?
                                    <a href="signup.html">Sign Up!</a>
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="text-center">
                    <a href="index-2.html" class="btn btn-secondary btn-sm">
                        <i class="fa fa-arrow-left"></i> Back to dashboard </a>
                </div>
            </div>
        </div>
        <!-- Reference block for JS -->
        <div class="ref" id="ref">
            <div class="color-primary"></div>
            <div class="chart">
                <div class="color-primary"></div>
                <div class="color-secondary"></div>
            </div>
        </div>
        <script src="{{ asset('admin/js/vendor.js')}}"></script>
        <script src="{{ asset('admin/js/app.js')}}"></script>
    </body>

</html>