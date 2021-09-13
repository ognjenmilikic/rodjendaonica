<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="beans.*"%>
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><i
				class="fas fa-birthday-cake"></i> rođendaonica</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0 mr-0">
					<li class="nav-item"><a class="nav-link" href="index.jsp">naslovna</a></li>
					<li class="nav-item"><a class="nav-link"
						href="agencijeServlet">agencije</a></li>
					<%
					HttpSession sesija = request.getSession();
					Korisnik korisnik = (Korisnik)sesija.getAttribute("korisnik");
					if (korisnik == null) {
					%>
					<li class="nav-item"><a class="nav-link" href="login.jsp">login</a></li>
					<li class="nav-item"><a class="nav-link" href="registracija.jsp">registracija</a></li>
					<%
					} else if (korisnik.getRole().equals("admin")) {
					%>
					<li class="nav-item"><a class="nav-link" href="adminServlet">admin
							panel</a></li>
					<li class="nav-item"><a class="nav-link" href="logoutServlet">logout</a></li>
					<%
					} else if(korisnik.getRole().equals("menadzer")) {
					%>
					<li class="nav-item"><a class="nav-link" href="menadzerServlet">menadzer panel</a></li>
					<li class="nav-item"><a class="nav-link" href="logoutServlet">logout</a></li>
					<%
					} else{
					%>
					<li class="nav-item"><a class="nav-link" href="profilServlet">profil</a></li>
					<li class="nav-item"><a class="nav-link" href="logoutServlet">logout</a></li>
					<%} %>
				</ul>
			</div>
		</div>
	</nav>