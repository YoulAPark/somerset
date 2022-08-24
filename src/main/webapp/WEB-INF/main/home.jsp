<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
    </tr>
    <th:block th:each="mybook : ${mybookList}">
        <tr>
            <td th:text="${ mybook.id }"></td>
            <td th:text="${ mybook.name }"></td>
            <td th:text="${ mybook.email }"></td>
        </tr>
    </th:block>
</table>

</body>
</html>