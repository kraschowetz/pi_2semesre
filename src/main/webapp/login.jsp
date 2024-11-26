<%@ page
    language="java"
    contentType="text/html"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Climb - Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <!-- Cabeçalho -->
	<header class="navbar">
		<a href="#" class="logo">climb</a>
		<nav class="nav-links">
			<a href="index.jsp">Início</a> <a href="catalogo.jsp">Catálogo</a> <a
				href="login.jsp">Login</a>
		</nav>
	</header>

    <!-- Conteúdo principal -->
    <div class="container">
        <div class="login-section">
            <h1>Login</h1>
            <form action="LoginServlet" method="post">
                <div class="form-group">
                    <input type="email" id="email" name="email" placeholder="exemplo@gmail.com" required>
                </div>

                <div class="form-group">
                    <input type="password" id="senha" name="senha" placeholder="suaSenha123" required>
                </div>

                <div class="forgot-password">
                    <a href="#">esqueci minha senha</a>
                </div>

                <div class="button-group">
                    <a href="cadastro.jsp" class="btn btn-register">Cadastre-se</a>
                    <button type="submit" class="btn btn-login">Entrar</button>
                </div>
            </form>
        </div>

        <div class="image-section">
            <img src="login.png" alt="Loja de roupas">
        </div>
    </div>

    <!-- Rodapé -->
    <footer class="footer">
        <p>Entre em contato com a gente!</p>
        <div class="social-media">
            <a href="#"><img src="instagram.png" alt="Instagram"></a>
            <a href="#"><img src="facebook.png" alt="Facebook"></a>
        </div>
    </footer>
</body>
</html>