<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Products</title>
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

.header {
	background-image:
		url('https://www.teahub.io/photos/full/191-1911616_oneplus-6t-wallpaper-pc.png');
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

.card a {
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
				<a href="/webstore"> <span class="glyphicon-hand-left glyphicon" /></span>
					<span>Nazad</span>
				</a> <a href="adminProducts"> <span
					class="glyphicon glyphicon-pencil w3-margin-left" /></span> <span>Azuriraj</span>
				</a>
			</div>

			<div
				class="w3-display-topmiddle w3-center w3-padding-32 w3-animate-opacity w3-text-white ">
				<div class="title-text">
					<h1 class="w3-wide">
						<b>Katalog</b>
					</h1>
					<p class="w3-large">Svi dostupni proizvodi u nasoj radnji</p>
				</div>
			</div>

		</div>
	</section>
	<section class="w3-panel w3-animate-opacity">
		<div class="w3-padding-large">
			<c:forEach items="${products}" var="product">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="card w3-card-4 w3-margin-top">
						<img src="${product.productImage}" alt="image"
							style="width: 100%; height: 300px" />
						<div class="w3-padding w3-center">
							<h3 class="w3-xxlarge"><b>${product.name}</b></h3>
							<p class="w3-xlarge"><b>$${product.unitPrice}</b></p>
							<p class="w3-opacity"><i>Dostupno ${product.unitsInStock} na stanju</i></p>
								<div class="w3-left-align">
									<a
									href=" <spring:url value= "/products/product?id=${product.productId}" /> ">
									<span class="glyphicon-info-sign glyphicon" /></span> Detalji
								</a>
								</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>