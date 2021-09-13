<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/stil.css">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">  
<title>Naslovna - Rođendaonica</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5"><b>dobrodošli na rođendaonicu!</b></h1>
				<p class="mb-5">idealno mesto za organizaciju dečijih rođendana.</p>
			</div>
		</div>
	</div>
	<div class="container-fluid section-2">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5 mb-4"><b>šta nudimo?</b></h1>
				<div class="row row-cols-1 row-cols-md-3 g-5 my-4">
					<div class="col">
						<div class="card h-100">
							<div class="card-body p-4">
								<h5 class="card-title pb-3"><i class="fas fa-birthday-cake fa-3x"></i></h5>
								<p class="card-text">Rezervaciju dečijih rođendana u nekoj od naših profesionalnih agencija. Budite sigurni da će zabava biti nezaboravna i da će deca pamtiti taj rođendan!</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card h-100">
							<div class="card-body p-4">
								<h5 class="card-title pb-3"><i class="fas fa-briefcase fa-3x"></i></h5>
								<p class="card-text">Širok izbor prostora i profesionalnih agencija koje će se pobrinuti da organizuje nezaboravnu proslavu.</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card h-100">
							<div class="card-body p-4">
								<h5 class="card-title pb-3"><i class="fas fa-user fa-3x"></i></h5>
								<p class="card-text">Registrujte se na našem sajtu i imaćete priliku da dobijete popust za sledeću proslavu kada rezervišete jednu.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-4 text-center my-5">
				<a href="agencijeServlet"><button class="btn btn-lg btn-2 p-4 w-100">POGLEDAJ NAŠE AGENCIJE</button></a>
			</div>
		</div>
	</div>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5"><b>kontaktiraj nas</b></h1>
				<h4 class="mt-3"><i class="fas fa-phone"></i> 064/120-33-95</h4>
				<h4 class="my-3"><i class="fas fa-map-marker-alt"></i> timočke divizije 1/9</h4>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2832.9924458693467!2d20.48901871574962!3d44.76056878813641!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a70e205de59c5%3A0x58270bd4f8fd8f9b!2z0KLQuNC80L7Rh9C60LUg0LTQuNCy0LjQt9C40ZjQtSAxLCDQkdC10L7Qs9GA0LDQtA!5e0!3m2!1ssr!2srs!4v1629725606194!5m2!1ssr!2srs" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
</body>
</html>