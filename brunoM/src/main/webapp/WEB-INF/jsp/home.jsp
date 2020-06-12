<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
    
    <title>Bruno</title>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link rel="shortcut icon" href="${contextPath}/imagens/logoIcon.png" />
    <link href="${contextPath}/css/inicio.css" rel="stylesheet">

</head>
<body>
	<header class="bl-topo">
		<figure class="bl-topo-figure">
			<img class="bl-topo-figure-img" src="${contextPath}/imagens/logo.png" alt="Logo Bruno" title="Logo Bruno" />
		</figure>
	</header>
	
	<div class="bl-img-fundo">
		<figure class="bl-img-fundo-figure">
			<img class="bl-img-fundo-figure-img" src="${contextPath}/imagens/folhas.png" alt="Imagem de folhas" title="Imagem de folhas" />
		</figure>
	</div>
	
	<section class="bl-corpo">
		<div class="container">
			<article class="bl-corpo-titulo">
				<header>
					<h1>O acolhimento que sua mente precisa</h1>
				</header>
				<a href="${contextPath}/possuiCadastro"><button>Começar agora</button></a>
			</article>
		</div>	
	</section>
</body>
</html>