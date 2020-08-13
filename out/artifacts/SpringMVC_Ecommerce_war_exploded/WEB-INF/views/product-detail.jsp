<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" src="<spring:url value="/resource/js/cart.js"/>"></script>
<link rel="stylesheet" href="<spring:url value="/resource/css/products.css" />">

<div class="product_image_area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title title">
                    <h2><span>Product Details</span></h2>
                    <p>Very us move be blessed multiply night</p>
                </div>
            </div>
        </div>

        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="s_product_img">
                    <div
                            id="carouselExampleIndicators"
                            class="carousel slide"
                            data-ride="carousel"
                    >
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img
                                        class="d-block w-100"
                                        src="<c:url value="/resource/images/${product.id}.png"></c:url>"
                                        alt="First slide"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3>${product.name}</h3>
                    <h2><spring:eval expression = "product.unitPrice" /></h2>
                    <ul class="list">
                        <li>
                            <a class="active" href="#">
                                <span>Category</span> : ${product.category}</a
                            >
                        </li>
                        <li>
                            <a href="#"> <span>Manufacturer</span> : ${product.manufacturer}</a>
                        </li>
                    </ul>
                    <p>${product.description}</p>
                    <div class="product_count">
                        <label for="qty">Quantity:</label>
                        <input
                                type="text"
                                name="qty"
                                id="sst"
                                maxlength="12"
                                value="1"
                                title="Quantity:"
                                class="input-text qty"
                        />
                        <button
                                onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                class="increase items-count"
                                type="button"
                        >
                            <i class="lnr lnr-chevron-up"></i>
                        </button>
                        <button
                                onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                class="reduced items-count"
                                type="button"
                        >
                            <i class="lnr lnr-chevron-down"></i>
                        </button>
                    </div>
                    <div class="card_area">
                        <a class="main_btn"  href="#" onclick="addToCart('${product.id}')">Add to Cart</a>
                        <a class="icon_btn" href="#">
                            <i class="lnr lnr lnr-diamond"></i>
                        </a>
                        <a class="icon_btn" href="#">
                            <i class="lnr lnr lnr-heart"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
