<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" href="<spring:url value="/resource/css/pagination.css" />" />

<div class="wrapper-pagination">
    <ul class="pagination">
        <li><a href="${param.type}?page=${0}&limit=${limit}">&laquo;</a></li>
        <c:forEach var="i" begin="1" end="${param.pages}" step="1">
            <li><a class="<c:if test="${param.page == i - 1}">active</c:if>" href="${param.type}?page=${i - 1}&limit=${limit}">${i}</a></li>
        </c:forEach>
        <li><a href="${param.type}?page=${param.pages - 1}&limit=${limit}">&raquo;</a></li>
    </ul>
</div>
