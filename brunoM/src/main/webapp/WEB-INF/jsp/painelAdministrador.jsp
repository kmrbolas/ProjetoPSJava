<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Seja bem-vindo!</title>
	
	<c:set value="${pageContext.request.contextPath }" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/painelUsuario.css" />
</head>
<body>
	
	<jsp:include page="painelAdminEstrutura.jsp"/>
	
	<main class="bl-corpo">
		<div class="container">
			<article>
				<header>
					<h1>Olá ${administradorLogado.nome}! <br> Seja bem-vindo(a) à area de administração do portal do Bruno, um ambiente pensado exclusivamente para você que precisa de auxilío nesse período turbulento em que todos passamos.</h1>
				</header>
			</article>
		</div>
	</main>
	
	<div class="gamb"></div>
</body>
</html>