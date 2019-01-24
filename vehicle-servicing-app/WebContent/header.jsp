<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<header class="container-fluid sticky-top">
		<div class="row">
			<nav class="navbar navbar-expand-lg">
				<a class="navbar-brand" href="home.htm">
					<img src="assets/images/logo.png" height="85px">
				</a>
				<div class="navbar-collapse justify-content-end">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link h5 mr-10" href="home.htm#why-us">Why Us?</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="home.htm#features">Features</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="home.htm#brands">Brands</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="">Contact Us</a>
						</li>
						<%  if(session.getAttribute("customer")!=null || session.getAttribute("serviceCenter")!=null) { %>
						<li class="nav-item">
							<a class="nav-link h5" href="account.htm">Account</a>
						</li>
						<% } %>
						<li class="nav-item">
							<%  if(session.getAttribute("customer")== null && session.getAttribute("serviceCenter")== null) { %>
							<a class="nav-link h5" href="login.htm">Sign Up/Sign In</a>
							<% } else { %>
							<a class="nav-link h5" href="signout.htm">Sign Out</a>
							<% } %>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>		
	</header>