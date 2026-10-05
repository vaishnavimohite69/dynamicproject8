<%@ page language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
</head>
<body>

<%
    String msg = (String)request.getAttribute("msg");

    if(msg != null) {
        out.println(msg);
    }
%>

<form action="add" method="post">

    Product Code:
    <input type="text" name="code"><br><br>

    Product Name:
    <input type="text" name="name"><br><br>

    Product Price:
    <input type="text" name="price"><br><br>

    Product Quantity:
    <input type="text" name="qty"><br><br>

    <input type="submit" value="Add Product">

</form>

<br>

<%@ include file="link.html" %>

</body>
</html>