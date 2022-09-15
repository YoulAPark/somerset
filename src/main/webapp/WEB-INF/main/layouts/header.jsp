<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
</style>
<script>
</script>
<body>
	<nav class="navbar navbar-light bg-light fixed-center px-5">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="/">SOMERSET</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
	      <div class="offcanvas-header">
	        <h5 class="offcanvas-title" id="offcanvasNavbarLabel" >SOMERSET</h5>
	        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	      </div>
	      <div class="offcanvas-body">
	        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="/admin/adminMain">Home</a>
	          </li>
	          <li class="nav-item">
	          	<c:if test="${not empty sessionScope.dbUser}">
		            <a class="nav-link" href="/admin/adminMain">관리자</a>
		            <a class="nav-link" href="/user/getUser">계정설정</a>
		            <a class="nav-link" href="#">Link</a>
	            </c:if>
	            <c:if test="${empty sessionScope.dbUser}">
	            	<a class="nav-link" href="#">Link</a>
	            </c:if>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	              Dropdown
	            </a>
	            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
	              <li><a class="dropdown-item" href="#">Action</a></li>
	              <li><a class="dropdown-item" href="#">Another action</a></li>
	              <li>
	                <hr class="dropdown-divider">
	              </li>
	              <li><a class="dropdown-item" href="#">Something else here</a></li>
	            </ul>
	          </li>
	        </ul>
	        <form class="d-flex">
	          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	          <button class="btn btn-outline-success" type="submit">Search</button>
	        </form>
	      </div>
	       <div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button type="button" class="btn btn-outline-dark btn-sm">Logout</button>
			</div>
	    </div>
	  </div>
	</nav>
</body>
</html>