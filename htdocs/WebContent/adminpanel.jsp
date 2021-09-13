<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%
HttpSession sesija = request.getSession();
Korisnik korisnik = (Korisnik) sesija.getAttribute("korisnik");
ArrayList<Agencija> agencije = (ArrayList<Agencija>) request.getAttribute("agencije");
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
<title>Admin panel</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<%
	if (korisnik == null) {
	%>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5">
					<b>niste ulogovani </b>
				</h1>
				<p class="mb-5 mt-0">
					idi na <a href="login.jsp">login</a> stranicu da bi se ulogovao.
				</p>
			</div>
		</div>
	</div>
	<%
	} else {
	%>
	<div class="container-fluid section-1 text-center py-5">
		<h1>
			<b>ćao, <%=korisnik.getIme()%></b>
		</h1>
	</div>
	<div class="container-fluid section-2">
		<div class="row d-flex justify-content-center align-items-center">
			<div class="col-md-4 text-center">
				<h2 class="my-5 float-start">
					<b>tvoji podaci</b>
				</h2>
				<button class="btn btn-lg btn-2 float-end mt-5"
					data-bs-toggle="modal" data-bs-target="#secondModal">
					<i class="fas fa-edit"></i>
				</button>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 profile-info-section p-3 m-2 text-center">
				<h3 class="m-0">
					<i class="fas fa-user"></i>
					<%=korisnik.getIme()%>
					<%=korisnik.getPrezime()%></h3>
			</div>
		</div>
		<div class="row d-flex justify-content-center pb-5">
			<div class="col-md-4 profile-info-section p-3 m-2 text-center">
				<h3 class="m-0">
					<i class="fas fa-envelope"></i>
					<%=korisnik.getEmail()%></h3>
			</div>
		</div>
	</div>
	<div class="container-fluid section-1 py-5">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6">
				<h1 class="float-start">
					<b>spisak aktivnih agencija na sajtu</b>
				</h1>
				<button class="btn btn-2 btn-lg float-end" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<i class="fas fa-plus-square"></i> Dodaj
				</button>
			</div>
		</div>
		<%
		if(agencije!=null){
		for (Agencija agencija : agencije) {
		%>
		<div class="row d-flex justify-content-center m-4">
			<div class="col-md-6 section-2 p-4"
				style="border: 1px solid #02240b; border-radius: 10px">
				<div class="row">
					<div class="col-md-12">
						<p class="m-0 float-start">
							<b><%=agencija.getNaziv()%></b>
						</p>
						<button class="btn btn-danger btn-sm float-end"
							onclick="confirmDeleteAgencija(<%=agencija.getAgencijaid()%>)"
							)>
							<i class="fas fa-trash-alt"></i> obriši agenciju
						</button>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p style="font-size: 0.8em" class="m-0 float-start"><%=agencija.getOpis()%></p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p class="mt-3 mb-0"><%=agencija.getAdresa()%></p>
						<%=agencija.getMapa()%>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p class="mt-3 mb-0">
							<b>informacije o menadzeru</b>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p class="float-start m-0"><%=agencija.getMenadzer().getIme()%>
							<%=agencija.getMenadzer().getPrezime()%></p>
						<p class="float-end m-0">
							<i class="fas fa-envelope"></i>
							<%=agencija.getMenadzer().getEmail()%></p>
					</div>
				</div>
			</div>
		</div>
		<%
		}
		}
		else{
		%>
		<div class="row">
			<div class="col-md-12">
				<h1>trenutno nema aktivnih agencija</h1>
			</div>
		</div>
		<%} %>
	</div>
	<%
	}
	%>
	<jsp:include page="footer.jsp" />
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Dodaj menadzera i agenciju kojom ce da upravlja</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form method="post" action="addMenadzerServlet">
						<div class="mb-3">
							<label for="ime" class="form-control-label">ime</label> <input
								type="text" class="form-control" name="ime" required>
						</div>
						<div class="mb-3">
							<label for="prezime" class="form-control-label">prezime</label> <input
								type="text" class="form-control" name="prezime" required>
						</div>
						<div class="mb-3">
							<label for="email" class="form-control-label">email</label> <input
								type="email" class="form-control" name="email" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-control-label">password</label> <input
								type="password" class="form-control" name="password" required>
						</div>
						<button class="btn btn-primary">Potvrdi</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="secondModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Izmeni podatke</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form method="post" action="editKorisnikServlet">
						<div class="mb-3">
							<label for="ime" class="form-control-label">ime</label> <input
								type="text" class="form-control" name="ime"
								value="<%=korisnik.getIme()%>" required>
						</div>
						<div class="mb-3">
							<label for="prezime" class="form-control-label">prezime</label> <input
								type="text" class="form-control" name="prezime"
								value="<%=korisnik.getPrezime()%>" required>
						</div>
						<div class="mb-3">
							<label for="email" class="form-control-label">email</label> <input
								type="email" class="form-control" name="email"
								value="<%=korisnik.getEmail()%>" required>
						</div>
						<button class="btn btn-primary">Potvrdi</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="js/adminpanel.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
</body>
</html>