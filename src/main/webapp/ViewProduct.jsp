
<%@ page language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="test.ProductBean" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="ISO-8859-1">

    <title>View All Products</title>

    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 30px;
        }

        h2 {
            color: #222;
            margin-bottom: 15px;
        }

        table {
            margin: auto;
            border-collapse: collapse;
            width: 80%;
            background-color: white;
        }

        th {
            background-color: #222;
            color: white;
            padding: 12px;
            border: 1px solid #222;
        }

        td {
            padding: 12px;
            border: 1px solid #ccc;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #222;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .back:hover {
            background-color: #555;
        }

    </style>

</head>

<body>

    <h2>View All Products</h2>

    <table>

        <tr>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Quantity</th>
        </tr>

<%
    ArrayList<ProductBean> al =
        (ArrayList<ProductBean>) request.getAttribute("alist");

    if (al != null && !al.isEmpty())
    {
        for(ProductBean pb : al)
        {
%>

        <tr>
            <td><%=pb.getCode()%></td>
            <td><%=pb.getName()%></td>
            <td><%=pb.getPrice()%></td>
            <td><%=pb.getQty()%></td>
        </tr>

<%
        }
    }
    else
    {
%>

        <tr>
            <td colspan="4">No Products Found</td>
        </tr>

<%
    }
%>

    </table>

    <a href="link.html" class="back">Back to Home</a>

</body>

</html>

