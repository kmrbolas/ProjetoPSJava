<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Seu perfil :)</title>
	
	<c:set value="${pageContext.request.contextPath}" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/painelUsuarioPerfil.css" />
</head>
<body>

	<jsp:include page="painelAdminEstrutura.jsp"/>
	
	<main class="bl-corpo">
		<div class="container">
			<article>
				<header>
					<h1>Editar perfil:</h1>
					<hr>
				</header>
				
				<form:form class="bl-corpo-formulario" modelAttribute="administradorModel" action="${contextPath}/painelAdmin/perfilUpdate/${administradorModel.id}" method="put">
					<label>Nome:</label>
					<form:input type="text" path="nome" id="nome" maxlength="50" size="50" />
					
					<label>E-mail:</label>
					<form:input type="text" path="email" id="email" maxlength="100" size="100" />
					
					<label>Senha:</label>
					<form:input type="text" path="senha" id="senha" maxlength="50" size="50" />
					
					<form:input type="hidden" path="tipo" id="tipo" maxlength="2" size="2" />
					
					<button type="submit" class="btn-edita">Atualizar seu perfi</button>
				</form:form>
			</article>
		</div>
	</main>
	
	<div class="gamb"></div>
</body>
</html>