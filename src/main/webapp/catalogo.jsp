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
	<title>Página Inicial</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
	<jsp:include page="/includes/menu.jsp"></jsp:include>
	
	<h1>catálogo</h1>
	
	<c:if test="${lista == null}">
		<h1>deu certo</h1>
	</c:if>
		
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Estoque</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="produto" items="${lista}">
				<tr>
					<td>${produto.nome}</td>
					<td>${produto.categoria}</td>
					<td>${produto.preco}</td>
					<td>${produto.estoque}</td>
					<td>
						<a href="editar?id_produto=${produto.idProduto}">Comprar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<jsp:include page="/includes/footer.jsp"></jsp:include>
</body>

</html>
