<%--
  Created by IntelliJ IDEA.
  User: gantushig
  Date: 7/26/20
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title><tiles:insertAttribute name="title" /></title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<spring:url value="/resource/css/main.css" />" />
    <link rel="stylesheet" href="<spring:url value="/resource/css/bootstrap.css" />" />
    <link rel="stylesheet" href="<spring:url value="/resource/vendors/linericon/style.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/css/themify-icons.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/vendors/owl-carousel/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/vendors/lightbox/simpleLightbox.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/vendors/nice-select/css/nice-select.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/vendors/animate-css/animate.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/vendors/jquery-ui/jquery-ui.css" />">
    <!-- main css -->
    <link rel="stylesheet" href="<spring:url value="/resource/css/style.css" />">
    <link rel="stylesheet" href="<spring:url value="/resource/css/responsive.css" />">
</head>
<body>
    <tiles:insertAttribute name="navigation" />
    <tiles:insertAttribute name="banner" />
    <tiles:insertAttribute name="body" />

    <script src="<spring:url value="/resource/js/jquery-3.2.1.min.js" />"></script>
    <script src="<spring:url value="/resource/js/popper.js" />"></script>
    <script src="<spring:url value="/resource/js/bootstrap.min.js" />"></script>
    <script src="<spring:url value="/resource/js/stellar.js" />"></script>
    <script src="<spring:url value="/resource/vendors/lightbox/simpleLightbox.min.js" />"></script>
    <script src="<spring:url value="/resource/vendors/nice-select/js/jquery.nice-select.min.js" />"></script>
    <script src="<spring:url value="/resource/vendors/isotope/imagesloaded.pkgd.min.js" />"></script>
    <script src="<spring:url value="/resource/vendors/isotope/isotope-min.js" />"></script>
    <script src="<spring:url value="/resource/vendors/owl-carousel/owl.carousel.min.js" />"></script>
    <script src="<spring:url value="/resource/vendors/jquery-ui/jquery-ui.js" />"></script>
    <script src="<spring:url value="/resource/js/jquery.ajaxchimp.min.js" />"></script>
    <script src="<spring:url value="/resource/js/mail-script.js" />"></script>
    <script src="<spring:url value="/resource/js/theme.js" />"></script>
</body>
</html>
