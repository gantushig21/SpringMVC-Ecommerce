<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="<spring:url value="/resource/css/products.css" />">

<section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title title">
                    <h2><span>Featured product</span></h2>
                    <p>Bring called seed first of third give itself now ment</p>
                </div>
            </div>
        </div>

        <div class="row">
            <c:forEach items="${products}" var="product">
                <div class="col-lg-4 col-md-6">
                    <div class="single-product">
                        <div class="product-img product-image">
                            <img class="img-fluid" style="height: 300px;" src="<c:url value="/resource/images/${product.id}.png" />" alt="" />
                        </div>
                        <div class="product-btm">
                            <a href="#" class="d-block">
                                <h4>${product.name}</h4>
                            </a>
                            <div class="mt-3" style="display: flex; justify-content: space-between;">
                                <div style="padding-top: 10px;">
                                    <span class="mr-4"><spring:eval expression = "product.unitPrice" /></span>
                                </div>
                                <div>
                                    <a
                                            href="<spring:url value="/products/product?id=${product.id}"/>"
                                            class="genric-btn default"
                                    >
                                        Details
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <jsp:include page="parts/pagination.jsp">
                <jsp:param name="pages" value="${pages}" />
                <jsp:param name="page" value="${page}" />
                <jsp:param name="type" value="products" />
            </jsp:include>
        </div>
    </div>
</section>

