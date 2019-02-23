<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
  <head>
	<title>Admin Login</title>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--==============================================================
=================================-->	
	<link rel="icon" type="image/png" href="Error/pic.jpg"/>
  
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="LoginBoot/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="LoginBoot/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginBoot/css/util.css">
	<link rel="stylesheet" type="text/css" href="LoginBoot/css/main.css">
	
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('LoginBoot/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form"  action="Login" method="post">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Admin Login
					</span>

					
					<div class="wrap-input100 validate-input" data-validate = "user">
						<input class="input100" type="text" name="user" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							Login    
						</button>
					</div>
				
					<%
						try{
							
							String data=session.getAttribute("user").toString();
							out.println(data);
							session.removeAttribute("user");
							session.invalidate();
							
						}
					catch(Exception f)
					{
						
					}
				
					
					%>
				
				
				</form>
			</div>
		</div>
	</div>
	
	

	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="LoginBoot/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginBoot/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginBoot/vendor/bootstrap/js/popper.js"></script>
	<script src="LoginBoot/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginBoot/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginBoot/vendor/daterangepicker/moment.min.js"></script>
	<script src="LoginBoot/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="LoginBoot/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="LoginBoot/js/main.js"></script>

</body>
</html>
</html>
