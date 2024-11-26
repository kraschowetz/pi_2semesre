<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Climb - Edição de Estoque</title>
<link rel="stylesheet" href="css/editarProduto.css">
<style type="text/css">
    <%@ include file="css/editarProduto.css" %>
</style>
</head>
<body>
	<!-- Cabeçalho -->
	<header class="navbar">
		<a href="#" class="logo">climb</a>
		<nav class="nav-links">
			<a href="indexAdm.jsp">Início</a>
		</nav>
	</header>

	<div class="container">
		<nav class="breadcrumb">
			<span>Manutenção de produtos</span> > <span>Edição de produto</span>
		</nav>

		<section class="form-section">
			<h1>Edição de estoque</h1>
			<form id="editForm">
				<div class="form-row">
					<label for="productName">Nome do produto</label> <input type="text"
						id="productName" name="productName" value="Jaqueta Rocket"
						required>
				</div>

				<div class="form-row">
					<label for="productCategory">Selecione a categoria do
						produto</label> <select id="productCategory" name="productCategory"
						required>
						<option value="">Escolha uma categoria</option>
						<option value="jaquetas" selected>Jaquetas</option>
						<option value="calças">Calças</option>
						<option value="sapatos">Sapatos</option>
					</select>
				</div>

				<div class="form-row">
					<label for="productSizes">Tamanhos disponíveis</label> <input
						type="text" id="productSizes" name="productSizes"
						placeholder="Indique os tamanhos disponíveis">
				</div>

				<div class="form-row">
					<label>Fotos do produto</label>
					<div class="file-upload">
						<input type="file" id="productImage" name="productImage"
							accept="image/*"> <label for="productImage">Arraste
							ou clique para carregar uma foto</label>
					</div>
				</div>

				<div class="form-row">
					<label for="productDescription">Descrição do produto</label>
					<textarea id="productDescription" name="productDescription"
						rows="4"
						placeholder="Jaqueta isolada, modelo punk com tecidos resistentes e leve proteção térmica."></textarea>
				</div>

				<div class="form-row">
					<label for="productPrice">Valor do produto</label> <input
						type="text" id="productPrice" name="productPrice"
						value="R$ 250,00" required>
				</div>

				<button type="submit" class="btn-save">Salvar</button>
			</form>
		</section>
	</div>

	<!-- Rodapé -->
	<footer class="footer">
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" width="30px" height="30px"
				alt="Instagram"></a> <a href="#"><img src="facebook.png"
				width="30px" height="30px" alt="Facebook"></a>
		</div>
	</footer>
</body>
</html>