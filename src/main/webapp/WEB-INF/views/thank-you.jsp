<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" href="<spring:url value="/resource/css/products.css" />">

<section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title title">
                    <h2><span>${title}</span></h2>
                    <p>${message}</p>
                </div>
            </div>
        </div>
    </div>
</section>

