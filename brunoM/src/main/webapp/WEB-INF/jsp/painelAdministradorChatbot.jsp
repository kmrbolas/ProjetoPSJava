<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	
	<title>O que você quer ver?</title>
	
	<c:set value="${pageContext.request.contextPath }" var="contextPath" />
	
	<link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
	<link rel="stylesheet" href="${contextPath}/css/painelUsuarioChatbot.css" />
</head>
<body>
	<header class="bl-topo">
		<figure class="bl-topo-figure">
			<a href="${contextPath}/painelAdmin/"><img class="bl-topo-figure-img" src="${contextPath}/imagens/logo.png" alt="Logo Bruno" title="Logo Bruno" /></a>
		</figure>
		
		<figure class="bl-topo-figure-right">
			<a href="${contextPath}/"><img class="bl-topo-figure-img" src="${contextPath}/imagens/iconOff.png" alt="Logo Bruno" title="Logo Bruno" /></a>
		</figure>
	</header>
	
	<section class="bl-corpo-menuLateral">
		<ul class="bl-menuLateral-ul">
			<a href="${contextPath}/painelAdmin/perfil"><button><li><i class="fas fa-user-circle"></i> Perfil</li></button></a>
			<a href="${contextPath}/painelAdmin/chatbot"><button><li><i class="fas fa-book-medical"></i> Chatbot</li></button></a>
		</ul>
	</section>
	
	<main class="bl-corpo">
		<div class="container">
			<article>
				<header>
					<h1>O que você quer ver?</h1>
					<hr>
				</header>
				<div class="bl-corpo-buttons">
					<a href="${contextPath}/painelAdmin/segmentos"><button><i class="fab fa-elementor"></i> Segmentos</button></a>
					<a href="${contextPath}/painelAdmin/bots"><button><i class="fas fa-robot"></i> Bots</button></a>
				</div>
			</article>
		</div>
	</main>
	
	<div class="gamb"></div>
</body>
</html>