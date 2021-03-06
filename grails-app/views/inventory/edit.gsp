<%--
  Created by IntelliJ IDEA.
  User: byznr
  Date: 18.08.2020
  Time: 10:43
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Inventory</title> //açılan sekme ismi
</head>

<body>
   //controller'da tanımlanan edit metodu içerisindeki değerler yazdırıldı
<form>
    Product: <input type="text" size=40 name="product" value="${product}" />
    <p>SKU: <input type="text" name="sku" value="${sku}" />
</form>
</body>
</html>