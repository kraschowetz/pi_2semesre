<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Climb - Especiais de Primavera</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<!-- Cabeçalho -->
	<header class="navbar">
		<a href="#" class="logo">climb</a>
		<nav class="nav-links">
			<a href="#">Início</a> <a href="catalogo.jsp">Catálogo</a> <a
				href="login.jsp">Login</a>
		</nav>
	</header>

	<!--  -->
	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="banner-jeans.png"
					alt="Primeiro Slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="banner-outono.png"
					alt="Segundo Slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="banner-safari.png"
					alt="Terceiro Slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="banner-streetwear.png"
					alt="Quarto Slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="banner-boho.png"
					alt="Quinto Slide">
			</div>
		</div>
	</div>

	<!-- Categorias -->
	<div class="categories">
		<div class="category-item">
			<img src="camiseta.png" width="80px" height="80px" alt="Blusas">
			<span>Blusas</span>
		</div>
		<div class="category-item">
			<img src="calça.png" width="80px" height="80px" alt="Calças"> <span>Calças</span>
		</div>
		<div class="category-item">
			<img src="vestido.png" width="80px" height="80px" alt="Vestidos">
			<span>Vestidos</span>
		</div>
		<div class="category-item">
			<img src="sapatos.png" width="80px" height="80px" alt="Calçados">
			<span>Calçados</span>
		</div>
		<div class="category-item">
			<img src="acessorio.png" width="80px" height="80px" alt="Acessórios">
			<span>Acessórios</span>
		</div>
	</div>

	<!-- Produtos em Destaque -->
	<section class="spring-specials">
		<h2>Especiais de Primavera</h2>
		<div class="products-grid m-2">
			<div class="product-card">
				<img src="https://via.placeholder.com/300" alt="Camiseta Básica">
				<div class="product-info">
					<div class="price">
						<span class="original-price">R$39,99</span> <span
							class="sale-price">R$29,99</span>
					</div>
					<a href="entrega.jsp" class="product-button">Camiseta Básica</a>
				</div>
			</div>
			<div class="product-card">
				<img src="https://via.placeholder.com/300" alt="Calça Jeans Skinny">
				<div class="product-info">
					<div class="price">
						<span class="original-price">R$79,99</span> <span
							class="sale-price">R$49,99</span>
					</div>
					<a href="entrega.jsp" class="product-button">Calça Jeans Skinny</a>
				</div>
			</div>
			<div class="product-card">
				<img src="https://via.placeholder.com/300" alt="Calça Jeans Skinny">
				<div class="product-info">
					<div class="price">
						<span class="original-price">R$79,99</span> <span
							class="sale-price">R$49,99</span>
					</div>
					<a href="entrega.jsp" class="product-button">Calça Jeans Skinny</a>
				</div>
			</div>
			<div class="product-card">
				<img src="https://via.placeholder.com/300" alt="Calça Jeans Skinny">
				<div class="product-info">
					<div class="price">
						<span class="original-price">R$79,99</span> <span
							class="sale-price">R$49,99</span>
					</div>
					<a href="entrega.jsp" class="product-button">Calça Jeans Skinny</a>
				</div>
			</div>
			<div class="product-card">
				<img src="https://via.placeholder.com/300" alt="Calça Jeans Skinny">
				<div class="product-info">
					<div class="price">
						<span class="original-price">R$79,99</span> <span
							class="sale-price">R$49,99</span>
					</div>
					<a href="entrega.jsp" class="product-button">Calça Jeans Skinny</a>
				</div>
			</div>
			<div class="product-card">
				<img src="https://via.placeholder.com/300" alt="Calça Jeans Skinny">
				<div class="product-info">
					<div class="price">
						<span class="original-price">R$79,99</span> <span
							class="sale-price">R$49,99</span>
					</div>
					<a href="entrega.jsp" class="product-button">Calça Jeans Skinny</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Botão de Ação -->
	<div class="cta-section">
		<button class="cta-button">Faça seu pedido</button>
	</div>

	<!-- Sobre Nós -->
	<section class="about-us">
		<h2 class="p-3">Sobre Nós</h2>
		<p class="p-5">Acreditamos que a moda pode ser
			mais do que estilo; ela pode ser uma expressão de propósito e
			consciência. Somos um marketplace independente que une criadores
			talentosos e consumidores conscientes, promovendo o encontro perfeito
			entre design, autenticidade e sustentabilidade. Nosso propósito é
			construir uma ponte entre marcas e estilistas independentes que
			valorizam práticas éticas e consumidores que buscam vestir-se com
			significado. Aqui, cada peça tem uma história: de processos criativos
			inovadores a escolhas conscientes que respeitam o meio ambiente e as
			pessoas envolvidas na produção. Na CLIMB, escalamos juntos para
			transformar o mundo da moda. Com curadoria cuidadosa, oferecemos uma
			seleção diversificada de roupas, acessórios e peças que refletem
			identidade e responsabilidade. Escolha ser parte dessa jornada
			conosco, onde cada compra apoia o talento local e o futuro do
			planeta. <br>Vista-se com propósito. Suba mais alto com a CLIMB..</p>
	</section>

	<!-- Rodapé -->
	<footer class="footer">
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" width="30px" height="30px"
				alt="Instagram"></a> <a href="#"><img src="facebook.png"
				width="30px" height="30px" alt="Facebook"></a>
		</div>
	</footer>

	<!-- JavaScript do Carrossel -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>