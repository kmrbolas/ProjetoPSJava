<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>Possui cadastro?</title>
	
	<c:set value="${pageContext.request.contextPath}" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/possuiCadastro.css" />
	
</head>
<body>
	<header class="bl-topo">
		<figure class="bl-topo-figure">
			<a href="${contextPath}/"><img class="bl-topo-figure-img"
				src="${contextPath}/imagens/logo.png" alt="Logo Bruno" title="Logo Bruno" /></a>
		</figure>
	</header>

	<section class="bl-corpo">
		<div class="container">
			<article class="bl-corpo-titulo">
				<header>
					<h1>Você possui cadastro?</h1>
				</header>
				<a href="${contextPath}/login"><button>Sim :)</button></a> 
				<a href="${contextPath}/cadastro"><button>Não :(</button></a>
			</article>
		</div>
	</section>
</body>
</html>