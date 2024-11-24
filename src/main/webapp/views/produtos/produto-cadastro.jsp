<%@
	page language="java"
	contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Cadastro de Produtos</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
	<jsp:include page="../../includes/menu.jsp"></jsp:include>
	
	<h1>lista de produtos</h1>
	
	<form action="${produto == null ? 'novo' : 'update'}" method="post">
		<input type="hidden" name="id_produto" value="${produto.getIdProduto()}">
		Nome: <input type="text" name="nome" value="${produto.getNome()}">
		categoria: <input type="text" name="categoria" value="${produto.getCategoria()}">
		Preco: <input type="text" name="preco" value="${produto.getPreco()}">
		Estoque: <input type="text" name="estoque" value="${produto.getEstoque()}">
		<br><br>
		<input type="submit" value="salvar">
		<input type="button" value="cancelar" onclick="window.location.href='listar';"/>
		
	</form>	

	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>

</html>