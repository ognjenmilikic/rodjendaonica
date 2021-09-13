<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%
HttpSession sesija = request.getSession();
Korisnik korisnik = (Korisnik) sesija.getAttribute("korisnik");
Agencija agencija = (Agencija) request.getAttribute("agencija");
ArrayList<Rezervacija> rezervacije = (ArrayList<Rezervacija>) request.getAttribute("rezervacije");
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
<title>Menadžer panel</title>
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
		<div class="row d-flex justify-content-center pb-5">
			<div class="col-md-4 profile-info-section p-3 m-2 text-center">
				<h3 class="m-0">
					<i class="fas fa-envelope"></i>
					<%=korisnik.getEmail()%></h3>
			</div>
		</div>
	</div>
	<div class="container-fluid section-1">
		<div class="row d-flex justify-content-center mb-4">
			<div class="col-md-4">
				<h1 class="float-start mt-5">
					<b>tvoja agencija </b>
				</h1>
				<button class="btn btn-primary btn-lg float-end mt-5"
					data-bs-toggle="modal" data-bs-target="#secondModal">
					<i class="fas fa-edit"></i>
				</button>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<h1 class="mt-4">
					<b><%=agencija.getNaziv()%> </b>
				</h1>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<p>
					<b><%=agencija.getOpis()%> </b>
				</p>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<div class="col-md-6 text-center">
				<h3 class="mt-4">
					<b><%=agencija.getAdresa()%> </b>
				</h3>
			</div>
		</div>
		<div class="row d-flex justify-content-center mb-5">
			<div class="col-md-6 text-center">
				<%=agencija.getMapa()%>
			</div>
		</div>
	</div>
	<div class="container-fluid section-2 p-3">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5">
					<b>ponuda tvoje agencije</b>
				</h1>
			</div>
		</div>
		<div class="row row-cols-1 row-cols-md-3 g-5 my-4">
			<div class="col">
				<div class="card h-100">
					<div class="card-body p-4 text-center">
						<h2 class="card-title">
							<b>STANDARD</b>
						</h2>
						<p class="card-text"><%=agencija.getPonuda().getStandard().getOpis()%></p>
						<h3 class="card-text">
							<b><%=agencija.getPonuda().getStandard().getCena()%>,00 RSD</b>
						</h3>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card h-100">
					<div class="card-body p-4 text-center">
						<h2 class="card-title">
							<b>PREMIUM</b>
						</h2>
						<p class="card-text"><%=agencija.getPonuda().getPremium().getOpis()%></p>
						<h3 class="card-text">
							<b><%=agencija.getPonuda().getPremium().getCena()%>,00 RSD</b>
						</h3>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card h-100">
					<div class="card-body p-4 text-center">
						<h2 class="card-title">
							<b>EXCLUSIVE</b>
						</h2>
						<p class="card-text"><%=agencija.getPonuda().getExclusive().getOpis()%></p>
						<h3 class="card-text">
							<b><%=agencija.getPonuda().getExclusive().getCena()%>,00 RSD</b>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-5">
					<b>rezervisani termini u tvojoj agenciji</b>
				</h1>
				<p class="mb-5">poređani od najnovijih ka najstarijim</p>
			</div>
		</div>
		<%
		if (rezervacije != null) {
			for (Rezervacija rezervacija : rezervacije) {
		%>
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 section-2 p-3 my-3"
				style="border: 1px solid #02240b; border-radius: 10px">
				<div class="row">
					<div class="col-md-12">
						<p class="float-start m-0">
							<b><%=rezervacija.getPaket()%></b>
						</p>
						<p class="float-end m-0">
							<b><%=rezervacija.getCenapaketa()%>,00 RSD</b>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p class="float-start m-0" style="font-size: 0.8em">
							<%=rezervacija.getOpispaketa()%>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12" style="border-bottom: 2px solid white">
						<p class="float-start mt-3">
							datum:
							<%=rezervacija.getDatum()%>
						</p>
						<p class="float-end mt-3">
							vreme:
							<%=rezervacija.getVreme()%>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p class="mt-2 mb-0">
							<b>KONTAKT KLIJENTA</b>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p class="float-start m-0"><%=rezervacija.getKorisnik().getIme()%>
							<%=rezervacija.getKorisnik().getPrezime()%></p>
						<p class="float-end m-0">
							<i class="fas fa-envelope"></i>
							<%=rezervacija.getKorisnik().getEmail()%></p>
					</div>
				</div>
			</div>
		</div>
		<%
		}
		} else {
		%>
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 text-center section-2 p-4" style="border: 1px solid #02240b; border-radius: 10px">
				<p class="h5 m-0">trenutno nema rezervacija</p>
			</div>
		</div>
		<%
		}
		%>
	</div>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center my-5">
				<button class="btn btn-danger btn-lg"
					onclick="confirmDelete(<%=korisnik.getKorisnikid()%>)">Obriši
					svoju agenciju i svoj profil</button>
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
	<div class="modal fade" id="secondModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Izmeni agenciju</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form method="post" action="editAgencijaServlet">
						<input type="hidden" name="agencijaid" value="<%= agencija.getAgencijaid() %>">
						<div class="mb-3">
							<label for="naziv" class="form-control-label">naziv</label> <input
								type="text" class="form-control" name="naziv"
								value="<%=agencija.getNaziv()%>" required>
						</div>
						<div class="mb-3">
							<label for="opis" class="form-control-label">opis</label>
							<textarea rows="6" class="form-control" name="opis"> <%=agencija.getOpis()%></textarea>
						</div>
						<div class="mb-3">
							<label for="adresa" class="form-control-label">adresa</label> <input
								type="text" class="form-control" name="adresa"
								value="<%=agencija.getAdresa()%>" required>
						</div>
						<div class="mb-3">
							<label for="mapa" class="form-control-label">mapa</label> 
							<textarea rows="6" class="form-control" name="mapa" aria-describedby="mapaHelp"><%= agencija.getMapa() %></textarea>
							<div id="mapaHelp" class="form-text">kopirati html kod sa google mape</div>
						</div>
						<div class="mb-3 text-center">
							<p class="h5 m-0"><b>STANDARD PAKET</b>
						</div>
						<input type="hidden" name="standardid" value="<%= agencija.getPonuda().getStandard().getStandardid() %>">
						<div class="mb-3">
							<label for="opisStandard" class="form-control-label">opis</label> 
							<input type="text" class="form-control" name="opisStandard" value="<%=agencija.getPonuda().getStandard().getOpis() %>" required>
						</div>
						<div class="mb-3">
							<label for="cenaStandard" class="form-control-label">cena</label> 
							<input type="text" class="form-control" name="cenaStandard" value="<%=agencija.getPonuda().getStandard().getCena() %>" required>
						</div>
						<div class="mb-3 text-center">
							<p class="h5 m-0"><b>PREMIUM PAKET</b>
						</div>
						<input type="hidden" name="premiumid" value="<%= agencija.getPonuda().getPremium().getPremiumid() %>">
						<div class="mb-3">
							<label for="opisPremium" class="form-control-label">opis</label> 
							<input type="text" class="form-control" name="opisPremium" value="<%=agencija.getPonuda().getPremium().getOpis() %>" required>
						</div>
						<div class="mb-3">
							<label for="cenaPremium" class="form-control-label">cena</label> 
							<input type="text" class="form-control" name="cenaPremium" value="<%=agencija.getPonuda().getPremium().getCena() %>" required>
						</div>
						<div class="mb-3 text-center">
							<p class="h5 m-0"><b>EXCLUSIVE PAKET</b>
						</div>
						<input type="hidden" name="exclusiveid" value="<%= agencija.getPonuda().getExclusive().getExclusiveid() %>">
						<div class="mb-3">
							<label for="opisExclusive" class="form-control-label">opis</label> 
							<input type="text" class="form-control" name="opisExclusive" value="<%=agencija.getPonuda().getExclusive().getOpis() %>" required>
						</div>
						<div class="mb-3">
							<label for="cenaExclusive" class="form-control-label">cena</label> 
							<input type="text" class="form-control" name="cenaExclusive" value="<%=agencija.getPonuda().getExclusive().getCena() %>" required>
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