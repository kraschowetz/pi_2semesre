<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${!sessionScope.adm}">
	<nav class="navbar">
		<ul>
			<li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
			
			<c:if test="${sessionScope.carrinho != null}">
				<li><a href="${pageContext.request.contextPath}/produtos/carrinho">Carrinho</a></li>
			</c:if>
						
			<c:if test="${sessionScope.user}">
				<li><a href="${pageContext.request.contextPath}/usuarios/logout">Logout</a></li>
			</c:if>
			<c:if test="${!sessionScope.user}">
				<li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
			</c:if>
		</ul>
	</nav>
</c:if>

<!-- oq leva alguem a fazer um if sem else, isso deveria ser um crime de guerra -->

<c:if test="${sessionScope.adm}">

	<nav class="navbar">
		<ul>
			<li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/produtos/listar">Produtos</a></li>
			<li><a href="${pageContext.request.contextPath}/usuarios/listar">Usuários</a></li>
			
			<c:if test="${sessionScope.carrinho != null}">
				<li><a href="${pageContext.request.contextPath}/produtos/carrinho">Carrinho</a></li>
			</c:if>
			
			<li><a href="${pageContext.request.contextPath}/usuarios/logout">Logout</a></li>
		</ul>
	</nav>
</c:if>