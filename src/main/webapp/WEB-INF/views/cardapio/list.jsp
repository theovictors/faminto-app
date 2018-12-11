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
</head>
<body>

<c:forEach items="${ produtos }" var="produto">

	<div class="card" style="width: 18rem;">
	  <div class="card-body">
	    <h5 class="card-title">${ produto.nome }</h5>
	    <h6 class="card-subtitle mb-2 text-muted">R$ ${ produto.preco }</h6>
	    <p class="card-text">${ produto.descricao }</p>
	    <a href="#" class="card-link">Adicionar ao carrinho</a>
	  </div>
	</div>

</c:forEach>

</body>
</html>