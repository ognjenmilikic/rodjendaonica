<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link rel="stylesheet" href="css/stil.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<title>Uspešna registracija</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container-fluid section-1">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<h1 class="mt-5">
					<b>uspešna registracija!</b>
				</h1>
				<p class="mb-5">idite na <a href="login.jsp">login</a> da biste pristupili vašem profilu ili rezervisali neku uslugu na našem sajtu.</p>
			</div>
		</div>
	</div>
	<div class="container-fluid section-2">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<h4 class="my-5">
					registracijom na naš sajt dobijate mogućnost rezervacije proslave dečijeg rođendana onlajn i rezervacijom ostvarujete 10% popusta na sledeću rezervaciju!
				</h4>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>