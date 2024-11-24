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
	<title>Cadastro de Usuarios</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
	<jsp:include page="../../includes/menu.jsp"></jsp:include>
	
	<h1>lista de usuarios</h1>
	
	<form action="${usuario == null ? 'novo' : 'update'}" method="post">
		<input type="hidden" name="id_usuario" value="${usuario.getId_usuario()}">
		Nome: <input type="text" name="nome" value="${usuario.getNome()}">
		Tipo: <input type="text" name="tipo" value="${usuario.getTipo()}">
		E-Mail: <input type="text" name="email" value="${usuario.getEmail()}">
		Senha: <input type="text" name="senha" value="${usuario.getSenha()}">
		<br><br>
		<input type="submit" value="salvar">
		<input type="button" value="cancelar" onclick="window.location.href='listar';"/>
		
	</form>	

	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>

</html>