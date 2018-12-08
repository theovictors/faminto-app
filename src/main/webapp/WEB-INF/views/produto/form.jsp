<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
        rel="stylesheet">
</head>
<body>
<div class="col-md-4">

	<form action="./form" method="POST">
	
	  <div class="form-group">
	    <label for="nome">Nome</label>
	    <input type="text" class="form-control" id="nome" name="nome">
	  </div>
	  
	  <div class="form-group">
	    <label for="descricao">Descrição</label>
	    <textarea class="form-control" id="descricao" name="descricao" rows="3"></textarea>
	  </div>
	  
	  <div class="form-group">
	    <label for="preco">Preço</label>
	    <div class="input-group">
	      <div class="input-group-prepend">
	        <span class="input-group-text" id="inputGroupPrepend2">R$</span>
	      </div>
	      <input type="number" class="form-control" id="preco" name="preco">
	    </div>
	  </div>
	  
	  <button class="btn btn-primary" type="submit">Enviar</button>
	  
	</form>
	
</div>
<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>