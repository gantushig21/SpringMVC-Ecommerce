<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" href="<spring:url value="/resource/css/products.css" />">

<div class="whole-wrap">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title title mb-0">
                    <h2><span>New Product</span></h2>
                    <p>Very us move be blessed multiply night</p>
                </div>
            </div>
        </div>
        <section class="section_gap d-flex justify-content-center pt-5">
            <form:form cssStyle="max-width: 800px; width: 100%;" modelAttribute="product"  enctype="multipart/form-data">
                <div class="mt-10 row">
                    <div class="col-md-7">
                        <form:input
                                cssClass="single-input"
                                path="id"
                                id="id"
                                placeholder="Product ID"
                                required="true"
                                onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Product ID'"
                        />
                    </div>
                    <div class="col-md-5">
                        <form:errors cssClass="span-error" path="id" />
                    </div>
                </div>
                <div class="mt-10 row">
                    <div class="col-md-7">
                        <form:input
                                cssClass="single-input"
                                path="name"
                                id="name"
                                placeholder="Name"
                                required="true"
                                onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Name'"
                        />
                    </div>
                    <div class="col-md-5">
                        <form:errors cssClass="span-error" path="name" />
                    </div>
                </div>
                <div class="mt-10 row">
                    <div class="col-md-7">
                        <form:input
                                cssClass="single-input"
                                path="unitPrice"
                                id="unitPrice"
                                type="number"
                                step="0.01"
                                placeholder="Unit Price"
                                required="true"
                                onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Unit Price'"
                        />
                    </div>
                    <div class="col-md-5">
                        <form:errors cssClass="span-error" path="unitPrice" />
                    </div>
                </div>
                <div class="mt-10 row">
                    <div class="col-md-7">
                        <form:textarea
                                cssClass="single-input"
                                path="description"
                                id="description"
                                placeholder="Description"
                                onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Description'"
                        />
                    </div>
                </div>
                <div class="mt-10 row">
                    <div class="col-md-7">
                        <form:input
                                cssClass="single-input"
                                path="manufacturer"
                                id="manufacturer"
                                placeholder="Manufacturer"
                                onfocus="this.placeholder = ''"
                                onblur="this.placeholder = 'Manufacturer'"
                        />
                    </div>
                </div>
                <div class="input-group-icon mt-10 row">
                    <div class="col-md-7">
                        <div class="icon">
                            <i class="fa fa-plane" aria-hidden="true"></i>
                        </div>
                        <div class="form-select" id="default-select">
                            <form:select path="category">
                                <form:options items="${categories}"></form:options>
                            </form:select>
                        </div>
                    </div>
                </div>
                <div class="mt-10 row">
                    <div class="col-md-7">
                        <form:input path="productImage" id="productImage" type="file" />
                    </div>
                </div>

                <div class="mt-10 row">
                    <div class="col-md-7 text-right">
                        <input type="submit" id="btnAdd" class="main_btn" value ="Add" />
                    </div>
                </div>
            </form:form>
        </section>
    </div>
</div>




