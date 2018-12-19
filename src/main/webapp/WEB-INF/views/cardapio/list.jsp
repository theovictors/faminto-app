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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Faminto</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/cardapio">Cardápio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/carrinho/checkout">Checkout</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Telas administrativas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Cozinheiro</a>
          <a class="dropdown-item" href="#">Entregador</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Admin
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Lista de produtos</a>
          <a class="dropdown-item" href="#">Adicionar novo produto</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
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