<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="<spring:url value="/resource/js/cart.js"/>"></script>
<link rel="stylesheet" href="<spring:url value="/resource/css/products.css" />">

<div class="whole-wrap">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title title mb-0">
                    <h2><span>Cart</span></h2>
                    <p>Very us move be blessed multiply night</p>
                </div>
            </div>
        </div>
        <section class="cart_area">
            <div class="container">
                <div class="cart_inner">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Unit Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach  var="item" items ="${cart.cartItems}" varStatus="loop">
                                    <tr>
                                        <td>
                                            <h5>${loop.index + 1}</h5>
                                        </td>
                                        <td>
                                            <div class="media">
                                                <div class="d-flex">
                                                    <img
                                                            src="<c:url value="/resource/images/${item.value.product.id}.png"></c:url>"
                                                            alt="good"
                                                            style="width: 100px;"
                                                    />
                                                </div>
                                                <div class="media-body">
                                                    <p>${item.value.product.name}</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <h5><spring:eval expression = "item.value.product.unitPrice" /></h5>
                                        </td>
                                        <td>
                                            <h5>${item.value.quantity}</h5>
                                        </td>
                                        <td>
                                            <h5><spring:eval expression = "item.value.totalPrice" /></h5>
                                        </td>
                                        <td>
                                            <button class="genric-btn danger radius small" onclick="removeFromCart('${item.value.product.id}');">
                                                Remove
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <h5>Grand Total</h5>
                                    </td>
                                    <td>
                                        <h5><spring:eval expression = "cart.grandTotal" /></h5>
                                    </td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

