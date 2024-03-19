<!DOCTYPE html>
<html>
    <head>
        <title>MEDINOVA - Login</title>
       <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background-image: url("img/login_bgr.png");
                font-family: Arial, sans-serif;
                background-size: cover;
            }

            .container {
                max-width: 600px;
                margin: 70px auto;
                padding: 10px 20px;
                background-color:white;
                border-radius: 15px;
                box-shadow: 30px 30px 90px #000;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
                color: #13c5dd;
            }

            .form-group input[type="email"],
            .form-group input[type="password"] {
                width: 100%;
                padding: 10px;
                border-radius: 10px;
                border: none;
                outline: none;
                border-bottom: 2px solid #848e9f;
                color: #13c5dd;
            }

            .form-group input[type="email"]:focus,
            .form-group input[type="password"]:focus {
                border-bottom: 2px solid #13c5dd;
                color:#666666 ;
                border:solid #13c5dd 2px;
            }

            .form-group input[type="submit"] {
                width: 100%;
                padding: 10px;
                border-radius: 10px;
                background-color: #13c5dd;
                color: #ffffff;
                border: none;
                cursor: pointer;

            }

            .form-group a {
                text-decoration: none;
            }
            .icon{
                border:solid #13c5dd 2px;
                border-radius:10px;
                background-color: #13c5dd;

            }
        </style>
    </head>
    <body >
        <div class="container">
            <h2 class="text-center" style="color: #13c5dd;">Login <img style="width:40px;height:40px;border-radius:7px;" src="img/login-.gif" alt="alt"/></h2>
            <form action="login" method="post">
                <input type="hidden" name="service" value="login">

                <div class="form-group">
                    <label for="email">Email /Phone Number:</label>
                    <input  class="mr-5 bg-transparent" type="email" id="email" name="user_email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input class="mr-5 bg-transparent" type="password" id="password" name="user_password" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="Login">
                </div>
            </form>
            <div class="col-md-12 row">
                <div class="form-group col-md-6 text-center">
                    <a href="register">Register</a>
                </div>
                <div class="form-group col-md-6 text-center">
                    <a href="password_reset">Forgot Password?</a>
                </div>
            </div>

            <div>
                <p>___________________________Or login via________________________</p>
            </div>
            <div class="col-md-12 row pb-4">
                <div class="form-group col-md-5 text-center icon p-1 container ">
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/SWP391/login?service=login_via_google&response_type=code&client_id=70125787371-ur520ehmeuj773hhnnhj871lglf84mrg.apps.googleusercontent.com&approval_prompt=force" 
                       class="google-login text-light">
                        <img src="img/google.png" width="30px" height="30px" alt="alt"/> Google</a>
                </div>
                <div class="form-group col-md-5 text-center icon p-1 container">
                    <a href="https://www.facebook.com/v13.0/dialog/oauth?client_id=1299396824032327&redirect_uri=http://localhost:8080/SWP391/login?service=login_via_facebook&state=login" class="facebook-login text-light">                
                        <img src="img/facebook.png" width="30px" height="30px" alt="alt"/> Facebook</a>

                </div>
            </div>
        </div>
    </body>
</html>
