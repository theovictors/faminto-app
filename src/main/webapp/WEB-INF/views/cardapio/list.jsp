<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"
        rel="stylesheet">
<link href="/webjars/font-awesome/5.5.0/css/all.min.css"
        rel="stylesheet">
</head>
<body>
<%@include file="../includes/menu.jsp" %>
<div class="row">

	<c:forEach items="${ produtos }" var="produto">
	
		<form action="./carrinho/add" method="POST" id="form_${ produto.id }">
		
			<input type="hidden" value="${ produto.id }" name="produtoId">
			
			<div class="card" style="width: 18rem; margin: 15px;">
			  <div class="card-body">
			    <h5 class="card-title">${ produto.nome }</h5>
			    <h6 class="card-subtitle mb-2 text-muted">R$ ${ produto.preco }</h6>
			    <p class="card-text">${ produto.descricao }</p>
			    <a href="#" onclick="document.getElementById('form_${produto.id}').submit(); alert('Produto adicionado no carrinho');" class="card-link">Adicionar ao carrinho <i class="fas fa-cart-plus"></i></a>
			  </div>
			</div>
			
		</form>
	
	</c:forEach>

</div>
<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>