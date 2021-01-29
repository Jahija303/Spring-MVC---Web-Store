<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Products</title>
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

.header {
	background-image: url('https://www.teahub.io/photos/full/191-1911616_oneplus-6t-wallpaper-pc.png');
	min-height: 230px;
	background-position: center;
	background-size: cover;
	background-position: center;
}

a {
	color: white;
	-webkit-transition: color 0.5s;
	-moz-transition: color 0.5s;
	-ms-transition: color 0.5s;
	-o-transition: color 0.5s;
	transition: color 0.5s;
	text-decoration: none;
}

a:hover {
	color: DodgerBlue;
	text-decoration: none;
}

h1 {
	font-size: 90px;
}
</style>
</head>
<body>
	<section>
		<div class="header w3-container w3-padding-64">

			<div
				class="w3-display-topleft w3-padding-large w3-large w3-padding-16">
				<a href="/webstore/products"> <span class="glyphicon-hand-left glyphicon" /></span>
					<span>Nazad</span>
					</a>
			</div>

			<div
				class="w3-display-topmiddle w3-center w3-padding-32 w3-animate-opacity w3-text-white ">
				<div class="title-text">
					<h1 class="w3-wide">
						<b>${product.name}</b>
					</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="container w3-animate-opacity">
		<div class="row w3-margin-top">
			<div class="col-md-5">
				<img src="${product.productImage}" alt="image" style="width: 100%" />
			</div>
			<div class="col-md-5">
				<h3>${product.name}</h3>
				<p class="w3-margin-bottom">${product.description}</p>
				<p>
					<strong>Serijski Broj : </strong><span class="label label-info">${product.productId}</span>
				</p>
				<p>
					<strong>Proizvodjac</strong> : ${product.manufacturer}
				</p>
				<p>
					<strong>Kategorija</strong> : ${product.category}
				</p>
				<p class="w3-margin-bottom">
					<strong>Dostupno na stanju </strong> : ${product.unitsInStock}
				</p>
				<h2 class="w3-margin-bottom">
					<b>${product.unitPrice} USD</b>
				</h2>

				<p>
				 <a href="#" class="btn btn-info btn-large"> <span
						class="glyphicon-shopping-cart glyphicon"></span> Kupi
					</a>
				</p>

			</div>
		</div>
	</section>
</body>
</html>
