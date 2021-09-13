<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%
HttpSession sesija = request.getSession();
Korisnik korisnik = (Korisnik) sesija.getAttribute("korisnik");
ArrayList<Rezervacija> rezervacije = (ArrayList<Rezervacija>) request.getAttribute("rezervacijeNaProfilu");
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
<title>Profil</title>
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
					<b>niste ulogovani
					</b>
				</h1>
				<p class="mb-5 mt-0">idi na <a href="login.jsp">login</a> stranicu da bi se ulogovao.</p>
			</div>
		</div>
	</div>
	<%
	}
	else{
	%>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5">
					<b>ćao, <%=korisnik.getIme()%>!
					</b>
				</h1>
				<p class="mb-5 mt-0">dobrodošao/la na svoj profil</p>
			</div>
		</div>
	</div>
	<div class="container-fluid section-2">
		<div class="row d-flex justify-content-center align-items-center">
			<div class="col-md-4 text-center">
				<h2 class="my-5 float-start">
					<b>tvoji podaci</b>
				</h2>
				<button class="btn btn-lg btn-2 float-end mt-5"
					data-bs-toggle="modal" data-bs-target="#exampleModal">
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
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 profile-info-section p-3 m-2 text-center">
				<h3 class="m-0">
					<i class="fas fa-envelope"></i>
					<%=korisnik.getEmail()%></h3>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 profile-info-section p-3 m-2 mb-5 text-center">
				<h3 class="m-0">
					<b>popusti</b>
				</h3>
				<%
				if (korisnik.getBodovi() > 0) {
				%>
				<p class="m-0">imate 10% popusta na sledeću rezervaciju!</p>
				<%
				} else {
				%>
				<p class="m-0">trenutno nemate pravo na popust, sledećom
					rezervacijom ostvarujete pravo na 10% popusta na sledeću
					rezervaciju.</p>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<div class="container-fluid section-1">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center p-3 m-2">
				<h1 class="mt-5">
					<b>tvoje rezervacije </b>
				</h1>
				<p class="mb-3">*poređane od najnovijih ka najstarijim</p>
			</div>
		</div>
		<%
		if(rezervacije!=null){
		for (Rezervacija rezervacija : rezervacije) {
		%>
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 p-3 mb-3 section-2"
				style="border: 1px solid #02240b; border-radius: 10px">
				<div class="row">
					<div class="col-md-12 text-center p-3 pb-0">
						<h4><%=rezervacija.getAgencija().getNaziv()%></h4>
					</div>
					<div class="col-md-12 p-3 pb-0">
						<p class="float-start m-0">
							<b><%=rezervacija.getPaket()%> PAKET</b>
						</p>
						<p class="float-end m-0">
							<b><%=rezervacija.getCenapaketa()%>,00 RSD</b>
						</p>
					</div>
					<div class="col-md-12 p-3 pt-0">
						<p style="font-size: 0.8em" class="float-start m-0"><%=rezervacija.getOpispaketa()%></p>
					</div>
					<div class="col-md-12 p-3 pb-0">
						<p class="float-start m-0">
							datum:
							<%=rezervacija.getDatum()%></p>
						<p class="float-end m-0">
							vreme:
							<%=rezervacija.getVreme()%></p>
					</div>
					<div class="col-md-12 p-3 pb-0 text-center">
						<h4 class="m-0">
							adresa:
							<%=rezervacija.getAgencija().getAdresa()%></h4>
					</div>
					<div class="col-md-12 px-3 pt-0 pb-3"
						style="border-bottom: 2px solid white">
						<%=rezervacija.getAgencija().getMapa()%>
					</div>
					<div class="col-md-12 p-3 pb-0 text-center">
						<h4 class="m-0">
							<b>KONTAKTIRAJ MENADŽERA</b>
						</h4>
					</div>
					<div class="col-md-12 p-3 pb-0">
						<p class="float-start m-0"><%=rezervacija.getAgencija().getMenadzer().getIme()%>
							<%=rezervacija.getAgencija().getMenadzer().getPrezime()%></p>
						<p class="float-end m-0">
							<i class="fas fa-envelope"></i>
							<%=rezervacija.getAgencija().getMenadzer().getEmail()%></p>
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
			<div class="col-md-12 text-center">
				<h4>trenutno nemate nijednu rezervaciju</h4>
			</div>
		</div>
		<%} %>
	</div>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center my-5">
				<button class="btn btn-danger btn-lg"
					onclick="confirmDelete(<%=korisnik.getKorisnikid()%>)">Obriši
					profil</button>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1"
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
	<%} %>
	<jsp:include page="footer.jsp" />
	<script src="js/profil.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
</body>
</html>