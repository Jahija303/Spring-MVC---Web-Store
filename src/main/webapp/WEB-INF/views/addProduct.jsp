<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

h2 {
	font-size: 70px;
}
</style>
</head>
<body>
	<section>
		<div class="header w3-container w3-padding-64">

			<div
				class="w3-display-topleft w3-padding-large w3-large w3-padding-16">
				<a href="/webstore/adminProducts"> <span class="glyphicon-hand-left glyphicon" /></span>
					<span>Nazad</span>
					</a>
			</div>

			<div
				class="w3-display-topmiddle w3-center w3-padding-32 w3-animate-opacity w3-text-white ">
				<div class="title-text">
					<h2 class="w3-wide">
						<b></b>
					</h2>
				</div>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form method="POST" modelAttribute="newProduct"
			class="form-horizontal" enctype="multipart/form-data">

			<fieldset class="w3-margin-top">
				<legend>Dodaj novi proizvod</legend>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name"><spring:message
							code="addProduct.form.name.label" /></label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text"
							class="w3-input w3-border" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitPrice"><spring:message
							code="addProduct.form.unitPrice.label" /></label>
					<div class="col-lg-10">
						<form:input id="unitPrice" path="unitPrice" type="text"
							class="w3-input w3-border" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="manufacturer"><spring:message
							code="addProduct.form.manufacturer.label" /></label>
					<div class="col-lg-10">
						<form:input id="manufacturer" path="manufacturer" type="text"
							class="w3-input w3-border" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="category"><spring:message
							code="addProduct.form.category.label" /></label>
					<div class="col-lg-10">
						<form:input id="category" path="category" type="text"
							class="w3-input w3-border" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitsInStock"><spring:message
							code="addProduct.form.unitsInStock.label" /></label>
					<div class="col-lg-10">
						<form:input id="unitsInStock" path="unitsInStock" type="text"
							class="w3-input w3-border" />

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description"><spring:message
							code="addProduct.form.description.label" /></label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" rows="2" class="w3-input w3-border"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="condition"><spring:message
							code="addProduct.form.condition.label" /></label>
					<div class="col-lg-10">
						<form:radiobutton path="condition" value="New" />
						New
						<form:radiobutton path="condition" value="Old" />
						Old
						<form:radiobutton path="condition" value="Refurbished" />
						Refurbished
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="productImage"> <spring:message
							code="addProdcut.form.productImage.label" /></label>
					<div class="col-lg-10">
						<form:input id="productImage" path="productImage" type="text"
							class="w3-input w3-border" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Dodaj" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
</body>
</html>
