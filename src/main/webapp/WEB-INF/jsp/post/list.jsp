<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
<title>메모리스트</title>
</head>
<body>
	
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<section class="memoList contents mb-4">
			<h2 class="text-center mt-5 mb-5"><b>메모리스트</b></h2>
			<table class="memoList table text-center border-bottom">
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>시간</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="post" items="${postList}">
						<tr>
							<td>${post.id}</td>
							<td><a href="/post/detail/view?id=${post.id}">${post.title}</a></td>
							<td><fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="d-flex justify-content-end">
				<a type="button" class="btn btn-primary mt-5" href="/post/create/view">글쓰기</a>
			</div>
		</section>
		
		
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>
	
</body>
</html>