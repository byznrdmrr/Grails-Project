<%--
  Created by IntelliJ IDEA.
  User: byznr
  Date: 18.08.2020
  Time: 12:29
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List Products</title>
</head>

<body>
 ${allProducts.name} ${allProducts.sku} ${allProducts.price}
<table border="1">
    <g:each in="${allProducts}" var="thisProducts">
        <tr>
            <td>${thisProducts.name}</td>
            <td>${thisProducts.sku}</td>
            <td>${thisProducts.price}</td>
        </tr>
    </g:each>
</table>
</body>
</html>