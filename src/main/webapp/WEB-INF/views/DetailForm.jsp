<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <title>Detail Form</title>
</head>

<body>
    <div class="container">
        <div class="text-center mt-4 mb-4 h1">Detail Form</div>
    </div>
    <div class="container">
        <form id="selectDetail" action="" method="post">
            <% HashMap params=(HashMap)request.getAttribute("params"); 
               String searchStr=(String)params.getOrDefault("search", ""); 
               HashMap result=(HashMap)request.getAttribute("result"); %>
            <div class="mb-3">
                <label class="form-label" for="name">NAME : </label>
                <div class="form-control" id="name" name="NAME"><%= result.get("NAME") %></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="idid">아이디 : </label>
                <div class="form-control" id="idid" name="ID" style="width: 500px;"><%= result.get("ID") %></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="idpw">비밀번호 : </label>
                <div class="form-control" id="idpw" name="PASSWORD" style="width: 500px;"><%= result.get("PASSWORD") %></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="idphonenumber">연락처 : </label>
                <div class="form-control" type="text" name="PHONENUMBER" id="idphonenumber" style="width: 500px;"><%= result.get("PHONENUMBER") %></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="idaddress">주소</label>
                <div class="form-control" type="text" name="ADDRESS" id="idaddress" style="width: 500px;"><%= result.get("ADDRESS") %></div>
            </div>
            <div class="mb-3">
                <label class="form-label"  for="idemail">Email </label>
                <div class="form-control" type="email" name="EMAIL" id="idemail" style="width: 500px;"><%= result.get("EMAIL") %></div>
            </div>
            <div class="text-center">
                <button class="btn btn-primary" type="submit" formaction="/main" formmethod="get">뒤로</button>
                <button class="btn btn-primary" formaction='/main/updateForm/<%= result.get("ID") %>'>updete</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>