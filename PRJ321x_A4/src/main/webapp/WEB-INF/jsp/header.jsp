<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>pickaboo</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Roboto:wght@100&display=swap">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css.css" />
</head>




<body>

	<div class="header">

		<!-- MENU BAR -->
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">

			<div class="container-fluid" id="div-nav">
				<div>
					<p class="navbar-nav me-auto nav-link"
						style="text-align: center; color: rgb(42, 108, 231);">
						<strong>pickaboo</strong>
					</p>
					<!--outside of div collapse => at small screen : not hidden -->
				</div>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- id="mynavbar" -->
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Products</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Samsung</a></li>
								<li><a class="dropdown-item" href="#">Iphone</a></li>
								<li><a class="dropdown-item" href="#">Oppo</a></li>
							</ul></li>

						</li>
						<li class="nav-item"><a class="nav-link" href="#">About
								us</a></li>
					</ul>
					<ul class="navbar-nav ">
						<!-- 'a' tag covered by ul tag (covered by div collapse) + not "me-auto"class => move to right -->
						<a class="nav-link" href="/LoginWeb2/login.html">Login</a>
					</ul>
				</div>
			</div>

		</nav>



		<!--banner-image -->
		<div id="banner"
			Style="height: 150px; background-color: rgb(51, 91, 111);">
			<div id="banner-content">
				<h1 id="banner-heading">
					<b>Welcome to pickaboo</b>
				</h1>
				<p id="banner-small-text"></p>
			</div>
			<div id="search-div">
				<form class="d-flex">
					<input class="form-control me-2" type="text"
						placeholder="What are you looking for?" name="search">
					<button class="btn btn-primary" type="button">Search</button>
				</form>
			</div>
		</div>

	</div>













	<div class="container-fluid mt-3">
		<div class="container-fluid">
			<div class="row">

				<!-- col 1-->
				<div class="col-12 col-sm-12 col-md-3 col-lg-3 p-3">
					<!--bg-primary text-white-->
					<div class="product-card">

						<img class="product-image" src="${pageContext.request.contextPath}/resources/image/1-iphone-13-pro.jpg"
							alt="iPhone 13 Pro 128GB">
						<h4>CELLPHONE</h4>
						<h6>
							<b>iPhone 13 Pro 128GB</b>
						</h6>
						<h5>$1318</h5>

					</div>

					<div class="product-card">

						<img class="product-image" src="${pageContext.request.contextPath}/resources/image/2-iphone-13.jpg"
							alt="iPhone 13 128GB">
						<h4>CELLPHONE</h4>
						<h6>
							<b>iPhone 13 128GB</b>
						</h6>
						<h5>$1045</h5>

					</div>

				</div>


				<!--col 2-->
				<div class="col-12 col-sm-12 col-md-3 col-lg-3 p-3">

					<div class="product-card">

						<img class="product-image" src="${pageContext.request.contextPath}/resources/image/3-iphone-xi.jpg"
							alt="iPhone 11 64GB">
						<h4>CELLPHONE</h4>
						<h6>
							<b>iPhone 11 64GB</b>
						</h6>
						<h5>$590</h5>

					</div>

					<div class="product-card">

						<img class="product-image" src="${pageContext.request.contextPath}/resources/image/4-iphone-12-pro.jpg"
							alt="iPhone 12 Pro 128GB">
						<h4>CELLPHONE</h4>
						<h6>
							<b>iPhone 12 Pro 128GB</b>
						</h6>
						<h5>$1090</h5>

					</div>

				</div>


				<!--col 3-->
				<div class="col-12 col-sm-12 col-md-3 col-lg-3 p-3">

					<div class="product-card">

						<img class="product-image" src="${pageContext.request.contextPath}/resources/image/5-iphone-13-mini.jpg"
							alt="iPhone 13 mini 128GB">
						<h4>CELLPHONE</h4>
						<h6>
							<b>iPhone 13 mini 128GB</b>
						</h6>
						<h5>$810</h5>

					</div>

					<div class="product-card">

						<img class="product-image" src="${pageContext.request.contextPath}/resources/image/6-iphone-12-mini.jpg"
							alt="iPhone 12 mini 64GB">
						<h4>CELLPHONE</h4>
						<h6>
							<b>iPhone 12 mini 64GB</b>
						</h6>
						<h5>$820</h5>

					</div>


				</div>
			</div>
		</div>
	</div>
