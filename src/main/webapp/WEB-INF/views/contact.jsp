<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="<spring:url value="/resource/css/products.css" />">

<script src="<spring:url value="/resource/vendors/counter-up/jquery.waypoints.min.js" />"></script>
<script src="<spring:url value="/resource/vendors/counter-up/jquery.counterup.js" />"></script>
<script src="<spring:url value="/resource/js/jquery.form.js" />"></script>
<script src="<spring:url value="/resource/js/jquery.validate.min.js" />"></script>
<script type="module" src="<spring:url value="/resource/js/contact.js" />"></script>

<section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title title">
                    <h2><span>Contact Us</span></h2>
                    <p>Very us move be blessed multiply night</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <h2 class="contact-title">Get in Touch</h2>
            </div>
            <div class="col-lg-8 mb-4 mb-lg-0">
                <form class="form-contact contact_form" action="contact/message?${_csrf.parameterName}=${_csrf.token}" method="post" id="contactForm" novalidate="novalidate">
                    <div class="row">
                        <div class="col-12" style="margin-bottom: 30px;">
                            <div class="form-group">
                                <textarea required class="form-control w-100" name="message" id="message" cols="30" rows="9" placeholder="Enter Message"></textarea>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <input required="true" class="form-control" name="name" id="name" type="text" placeholder="Enter your name">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <input required class="form-control" name="email" id="email" type="email" placeholder="Enter email address">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <input required class="form-control" name="subject" id="subject" type="text" placeholder="Enter Subject">
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-lg-3 text-right">
                        <button type="submit" class="main_btn">Send Message</button>
                    </div>
                </form>
            </div>
            <div class="col-lg-4">
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-home"></i></span>
                    <div class="media-body">
                        <h3>Ottumwa, Iowa.</h3>
                        <p>Buena Vista, IA 52501</p>
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                    <div class="media-body">
                        <h3><a href="tel:454545654">00 (440) 9865 562</a></h3>
                        <p>Mon to Fri 9am to 6pm</p>
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-email"></i></span>
                    <div class="media-body">
                        <h3><a href="mailto:support@colorlib.com">webstore@gmail.com</a></h3>
                        <p>Send us your query anytime!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

