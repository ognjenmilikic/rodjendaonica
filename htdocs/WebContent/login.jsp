<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%
HttpSession sesija = request.getSession();
Korisnik korisnik = (Korisnik) sesija.getAttribute("korisnik");
boolean error;
if(request.getAttribute("error")==null){
	error = false;
}
else{
	error = (boolean)request.getAttribute("error");
}
%>
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
<link rel="stylesheet" href="css/stil.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<title>Login</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="my-5">
					<b>login</b>
				</h1>
			</div>
		</div>
	</div>
	<% if(korisnik == null){ %>
	<div class="container-fluid section-2">
		<% if(error){ %>
		<div class="row d-flex justify-content-center">
			<div class="col-md-3 danger-section p-4 mt-5" style="border: 1px solid #02240b; border-radius: 10px">
				<p class="m-0">nije pronađen korisnik sa unetim kredencijalima, pokušajte ponovo</p>
			</div>
		</div>
		<% } %>
		<div class="row d-flex justify-content-center">
			<div class="col-md-3 py-5">
				<form method="post" action="loginServlet">
					<div class="mb-3">
						<label for="email" class="form-label">e-mail</label> 
						<input type="email" class="form-control" name="email" required>
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">password</label>
						<input type="password" class="form-control" name="password" required>
					</div>
					<button type="submit" class="btn btn-2">Potvrdi</button>
				</form>
			</div>
		</div>
	</div>
	<div class="container-fluid section-1">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<h4 class="my-5">
					loginom na naš sajt dobijate mogućnost rezervacije proslave dečijeg rođendana onlajn i rezervacijom ostvarujete 10% popusta na sledeću rezervaciju!
				</h4>
			</div>
		</div>
	</div>
	<%}
	else{%>
	<div class="container-fluid section-1">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<h4 class="my-5">
					greška, već ste ulogovani.
				</h4>
			</div>
		</div>
	</div>
	<%} %>
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