<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Agencije</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<%
	ArrayList<Agencija> agencije = (ArrayList<Agencija>) request.getAttribute("agencije");
	%>
	<div class="container-fluid section-1">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="my-5">
					<b>agencije u ponudi</b>
				</h1>
			</div>
		</div>
	</div>
	<div class="container-fluid section-2 p-4">
		<div class="row row-cols-1 row-cols-md-3 g-5">
			<%
			for (Agencija agencija : agencije) {
			%>
			<div class="col">
				<div class="card h-100">
					<div class="card-body p-4">
						<h3 class="card-title"><b><%= agencija.getNaziv() %></b></h3>
						<p class="card-text"><%= agencija.getOpis() %></p>
						<a href="agencijaServlet?id=<%= agencija.getAgencijaid() %>" class="btn btn-primary">Pogledaj ponudu</a>
					</div>
				</div>
			</div>
			<%
			}
			%>
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