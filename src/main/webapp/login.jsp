<%@ 
	page language="java"
	contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>

<body>
	<jsp:include page="/includes/menu.jsp"></jsp:include>
	
	<h1>Login</h1>
	
	<form action="usuarios/login" method="get">
		E-Mail: <input type="email" name="login_email" required>
		Senha: <input type="password" name="login_senha" required>
		<input type="submit" value="entrar">
	</form>

	<jsp:include page="/includes/footer.jsp"></jsp:include>
</body>

</html>