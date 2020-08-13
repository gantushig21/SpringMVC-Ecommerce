<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<header class="header_area">
    <div class="main_menu">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light w-100">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="<spring:url value="/welcome"/>">
                    <img src="<spring:url value="/resource/images/logo.png" />" alt="" style="width: 50%;"/>
                </a>
                <button
                        class="navbar-toggler"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div
                        class="collapse navbar-collapse offset w-100"
                        id="navbarSupportedContent"
                >
                    <div class="row w-100 mr-0">
                        <div class="col-lg-7 pr-0">
                            <ul class="nav navbar-nav center_nav pull-right">
                                <li class="nav-item">
                                    <a class="nav-link" href="<spring:url value="/welcome"/>">Home</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a
                                            href="#"
                                            class="nav-link dropdown-toggle"
                                            data-toggle="dropdown"
                                            role="button"
                                            aria-haspopup="true"
                                            aria-expanded="false"
                                    >Shop</a
                                    >
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<spring:url value="/products/"/>">Products</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<spring:url value="/products/add"/>">Add Product</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-lg-5 pr-0">
                            <ul class="nav navbar-nav navbar-right right_nav pull-right">
                                <li class="nav-item">
                                    <a
                                            href="<spring:url value="/cart/"/>"
                                            class="nav-link"
<%--                                            class="icons"--%>
                                    >
                                        Cart
<%--                                        <i class="ti-shopping-cart"></i>--%>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <security:authorize access="isAuthenticated()">
                                        <a
                                                class="nav-link"
                                                href="<spring:url value="/logout?${_csrf.parameterName}=${_csrf.token}"/>"
                                                style="margin-left: 20px"
                                        >
                                            Logout
                                        </a>
                                    </security:authorize>
                                    <security:authorize access="isAnonymous()">
                                        <a
                                                href="<spring:url value="/login"/>"
                                                class="nav-link"
                                                style="margin-left: 20px"
                                            <%--                                            class="icons"--%>
                                        >
                                            Login
                                                <%--                                        <i class="ti-user" aria-hidden="true"></i>--%>
                                        </a>
                                    </security:authorize>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>


