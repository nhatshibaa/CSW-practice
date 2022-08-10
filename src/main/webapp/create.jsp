<%@ page import="com.example.nguyentiennhat.Product" %><%--
  Created by IntelliJ IDEA.
  User: os_gpcp_gpdn40
  Date: 8/10/2022
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Product product = (Product) request.getAttribute("product");
%>
<html>
<style>
    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    div {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
    }
</style>
<body>

<h3>Add Product</h3>

<div>
    <form action="/list" method="post">
        <label >ID</label>
        <input type="text" name="id" value="<%=product.getId()%>">

        <label >Name</label>
        <input type="text" name="name" value="<%=product.getName()%>">

        <label >Price</label>
        <input type="text" name="price" value="<%=product.getPrice()%>">

        <label >Quantity</label>
        <input type="text" name="quantity" value="<%=product.getQuantity()%>">

        <input type="submit" value="Save">
    </form>
</div>

</body>
</html>



