<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="h-100 d-flex justify-content-center align-items-center">
    <div class="w-100" style="max-width: 500px; ">
        <form class="login-form" action="<spring:url value="/login"></spring:url>" method="post">
            <c:if test="${not empty error}">
                <span class="span-error">
                    <spring:message code="AbstractUserDetailsAuthenticationProvider.badCredentials"/>
                </span>
            </c:if>
            <div class="mt-10">
                <input type="text" name="username" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'"
                       required class="single-input">
            </div>
            <div class="mt-10">
                <input type="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"
                       required class="single-input">
            </div>
            <div class="mt-10">
                <div class="switch-wrap d-flex justify-content-end">
                    <p>Remember Me</p>
                    <div class="confirm-checkbox mt-1 ml-1">
                        <input type="checkbox" id="confirm-checkbox">
                        <label for="confirm-checkbox"></label>
                    </div>
                </div>
            </div>
            <div class="mt-10 text-right">
                <button class="btn submit_btn radius small">
                    Login
                </button>
            </div>
            <security:csrfInput />
        </form>
    </div>
</div>