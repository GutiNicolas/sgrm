<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login V1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="icon" type="image/png"
	href="resources/assets/images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/util.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/main.css">

<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">

<style>
body {
	font-family: 'Roboto', sans-serif;
}
</style>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
	<input hidden="" type="text" id="cod" value="${codigo}">
	<input hidden="" type="text" id="msg" value="${mensaje}">
	
	<div class="limiter" style="font-family: 'Roboto', sans-serif;">
		<div class="container-login100"
			style="background-image: url('resources/graficos/montevideo.jpg');">
			<div class="wrap-login100">
				<div class="login100-pic p-r-40">
					<img src="resources/graficos/logo-02.svg" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="servletRegistrarse"
					method="post" onsubmit="return validate()">
					<div class="wrap-input100">
						<input class="input101" type="text" name="nombre"
							placeholder="Nombre" onkeypress="return soloLetras(event)"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100">
						<input class="input101" type="text" name="apellido"
							placeholder="Apellido" onkeypress="return soloLetras(event)"> <span class="focus-input100"></span>
			
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="El mail tiene que tener el formato: ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Email"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-envelope"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="La contrase�a es obligatorio">
						<input class="input100" type="password" name="pass"
							placeholder="Contrase�a"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Registrarse
							<!-- tiene que ser de tipo summit -->
						</button>
					</div>
					<div class="text-center p-t-30">
						<a class="txt2" href="login.jsp"> <i
							class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
							Iniciar sesi�n
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="resources/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/assets/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/assets/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/assets/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="resources/assets/js/main.js"></script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	
<!-- 	 	Para mostrar alertas en popup -->
 	<script type="text/javascript">
		function validarRegistro(){	
			var messege = document.getElementById('msg').value
			
			if (document.getElementById('cod').value == 1){
				swal("��xito!", messege, "sucess");
			}		
			if (document.getElementById('cod').value == 0){
				swal("Oops!", messege, "info");
			}				
		}
	</script>
<!-- Para validar solo letras en nombre y apellido -->
	<script>
	    function soloLetras(e){
	       key = e.keyCode || e.which;
	       tecla = String.fromCharCode(key).toLowerCase();
	       letras = " �����abcdefghijklmn�opqrstuvwxyz";
	       especiales = "8-37-39-46";
	
	       tecla_especial = false
	       for(var i in especiales){
	            if(key == especiales[i]){
	                tecla_especial = true;
	                break;
	            }
	        }
	
	        if(letras.indexOf(tecla)==-1 && !tecla_especial){
	            return false;
	        }
	    }
	</script>
	<script >
			$(document).ready(validarRegistro());
	</script>

</body>
</html>