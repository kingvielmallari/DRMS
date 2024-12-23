
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <script src="/drms/assets/js/jquery.min.js"></script>
    <style>
    html,
    body {
        height: 100%;
        min-height:100%;
        
        background:linear-gradient(0deg, rgba(2, 4, 124, 0.8), rgba(35, 152, 228, 0.4)), url("assets/images/prmsu-bg.jpg");
        background-size:cover;
        
       

    }

    body {
        
        justify-content: center;
        align-items: center;
        padding-bottom: 40px;

    }

    

    .button {
      background-color: #d6a92b; /* Green */
      border: none;
      color: white;
      padding: 16px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      transition-duration: 0.4s;
      cursor: pointer;
    }

    a.register {
      margin-left: 120px;
    }
    a.register:hover {
      color:blue;
    }

    .button1 {
      background-color: white; 
      color: black; 
      border: 2px solid #d6a92b;
    }

    .button1:hover {
      background-color: #d6a92b;
      color: white;
    }
    </style>
</head>

<body>
    <!-- As a heading -->
<nav class="navbar navbar-dark bg-primary" style="background: rgb(17,10,134);
            background: linear-gradient(90deg, rgba(17,10,134,1) 0%, rgba(9,9,121,1) 28%, rgba(18,105,175,1) 100%);">
  <span class="navbar-brand mb-0 h1">Student Login</span>
  <a class="btn btn-light btn-sm" href="admin/index.php" role="button" style="margin-left: auto">Admin</a>
</nav>
    

    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container" style="margin-top: 50px">
        <div class="card ">
            <div class="card-header text-center"><img class="prmsu_logo" src="assets/images/prmsu_logo.jpg" alt="prmsu_logo" height="200px"></div>
            <div class="card-body">
                <form method="post" name="login_sform">
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" alt="username" type="text" placeholder="Username" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" type="password" alt="password" placeholder="Password"  autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox" id="remember" onclick="myFunction()"><span class="custom-control-label">Show Password</span>
                            <a href="registration/index.php" class="register">Register</a>
                        </label>
                    </div>
                   <div class="form-group">
                    <button class="btn btn-lg btn-block button1" value="Sign in" id="btn-student" name="btn-student">Sign in</button>
                    </div>
                     <div class="form-group" id="alert-msg">
                </form>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script type="text/javascript">
      document.oncontextmenu = document.body.oncontextmenu = function() {return false;}//disable right click
    </script>
     <script type="text/javascript">
            jQuery(function(){
                $('form[name="login_sform"]').on('submit', function(e){
                    e.preventDefault();

                    var u_username = $(this).find('input[alt="username"]').val();
                    var p_password = $(this).find('input[alt="password"]').val();
                   // var s_status = 1;

                    if (u_username === '' && p_password ===''){
                        $('#alert-msg').html('<div class="alert alert-danger"> Required Username and Password!</div>');
                    }else{
                        $.ajax({
                            type: 'POST',
                            url: 'init/controllers/login_process.php',
                            data: {
                                username: u_username,
                                password: p_password
                               // status: s_status
                            },
                            beforeSend:  function(){
                                $('#alert-msg').html('');
                            }
                        })
                        .done(function(t){
                            if (t == 0){
                                $('#alert-msg').html('<div class="alert alert-danger">Incorrect username or password!</div>');
                            }else{
                                $("#btn-student").html('<img src="assets/images/loading.gif" /> &nbsp; Signing In ...');
                                setTimeout(' window.location.href = "student/index.php"; ',2000);
                            }
                        });
                    }
                });
           });
        </script>
        <script>
            function myFunction() {
              var x = document.getElementById("password");
              if (x.type === "password") {
                x.type = "text";
              } else {
                x.type = "password";
              }
            }
     </script>
        
    </body>
</html>