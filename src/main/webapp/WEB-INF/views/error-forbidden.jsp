<%--
  Created by IntelliJ IDEA.
  User: gantushig
  Date: 7/23/20
  Time: 8:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error forbidden</title>
</head>
<body>
<h1>Something went wrong, Error forbidden</h1>
<h2>${requestScope['javax.servlet.error.message']}</h2>
</body>
</html>
