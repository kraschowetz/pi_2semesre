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
	<title>Lista de Usuários</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
	<jsp:include page="../../includes/menu.jsp"></jsp:include>
	
	<h1>lista de usuários</h1>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Tipo</th>
				<th>E-Mail</th>
				<th>Senha</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="usuario" items="${lista}">
				<tr>
					<td>${usuario.id_usuario}</td>
					<td>${usuario.nome}</td>
					<td>${usuario.tipo}</td>
					<td>${usuario.email}</td>
					<td>${usuario.senha}</td>
					<td>
						<a href="editar?id_usuario=${usuario.id_usuario}">Editar</a>
						<a href="excluir?id_usuario=${usuario.id_usuario}">Excluir</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<br>
	
	<a href="cadastro">novo usuario</a>

	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>

</html>