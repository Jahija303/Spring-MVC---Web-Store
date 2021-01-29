<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<title>Welcome</title>
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%
}

h1 {
	font-size: 120px;
}

.tagline {
	font-size: 30px;
}

.bgimg {
	background-image:
		url('https://www.gizmochina.com/wp-content/uploads/2018/04/OnePlus-6-9.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

a {
	-webkit-transition: color 0.5s;
	-moz-transition: color 0.5s;
	-ms-transition: color 0.5s;
	-o-transition: color 0.5s;
	transition: color 0.5s;
	text-decoration: none;
}

a:hover {
	color: DeepSkyBlue;
	text-decoration: none;
}
</style>
</head>
<body>
	<div
		class="bgimg w3-display-container w3-animate-opacity w3-text-white">
		<div
			class="w3-display-topleft w3-padding-large w3-xlarge w3-padding-16">
			<a href="products"> <span class="glyphicon glyphicon-tags" /></span><span
				class="w3-padding">Katalog</span>
			</a>
		</div>
		<div class="w3-display-middle">
			<div class="w3-panel w3-black">
				<h1 class="title w3-wide w3-animate-top">
					<b>${greeting}</b>
				</h1>
				<p class="tagline w3-center w3-animate-bottom">${tagline}</p>
			</div>
		</div>
		<div class="w3-display-bottommiddle w3-padding-large">
			Powered by <a href="#" target="_blank">${email}</a>
		</div>
	</div>
</body>
</html>