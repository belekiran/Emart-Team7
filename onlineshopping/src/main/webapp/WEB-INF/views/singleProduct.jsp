<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<spring:url var="js" value="/resources/js" />
<spring:url var="css" value="/resources/css" />



<%-- <link href="${css}/pygments.css" rel="stylesheet"> --%>

<%-- <link href="${css}/easyzoom.css" rel="stylesheet"> --%>


<div class="container">

	<!-- Breadcrumb -->
	<div class="row">

		<div class="col-xs-12">


			<ol class="breadcrumb">

				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="active">${product.name}</li>

			</ol>


		</div>


	</div>


	<div class="row">

		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-4">

			<div class="easyzoom easyzoom--with-thumbnails">

				<img id="zoom_05" src="${images}/${product.code}"
					class="img img-responsive" />

			</div>

		</div>


		<!-- Display the product description -->
		<div class="col-xs-12 col-sm-8">

			<h3>${product.name}</h3>
			<hr />

			<p>${product.description}</p>
			<hr />
<%-- 
			<h4>
				Price: <strong> &#8377; ${product.unitPrice} /-</strong>
			</h4>
			<hr /> --%>

			<c:if test="${userModel.member}">
				<h4>
				Price:
					<strike><strong>&#8377; <fmt:formatNumber
						value="${product.unitPrice}" type="number"
						pattern="#" /></strong></strike>
			
					&#8377;
					<fmt:formatNumber
						value="${(product.unitPrice *
										discount)}" type="number"
						pattern="#" />
				</h4>
				<hr />
			</c:if>
				<c:if test="${!userModel.member}">
				<h4>
				Price: <strong>&#8377; <fmt:formatNumber
						value="${product.unitPrice}" type="number"
						pattern="#" /></strong>
			</h4>
			<hr />
				</c:if>

			<c:choose>

				<c:when test="${product.quantity < 1}">

					<h6>
						Qty. Available: <span style="color: red">Out of Stock!</span>
					</h6>

				</c:when>
				<c:otherwise>

					<h6>Qty. Available: ${product.quantity}</h6>

				</c:otherwise>

			</c:choose>
			<hr />

			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th colspan="2">Specification</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${attributes}" var="attribute">


							<tr>

								<td>${attribute.att_key}</td>
								<td>${attribute.att_value}</td>

							</tr>


						</c:forEach>


					</tbody>
				</table>
			</div>
			<security:authorize access="isAnonymous() or hasAuthority('USER')">

				<c:choose>

					<c:when test="${product.quantity < 1}">

						<a href="javascript:void(0)" class="btn btn-success disabled"><strike>
								<span class="glyphicon glyphicon-shopping-cart"></span> Add to
								Cart
						</strike></a>

					</c:when>
					<c:otherwise>

						<a href="${contextRoot}/cart/add/${product.id}/product"
							class="btn btn-success"> <span
							class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
						</a>




					</c:otherwise>

				</c:choose>
			</security:authorize>


			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product"
					class="btn btn-success"> <span
					class="glyphicon glyphicon-pencil"></span> Edit
				</a>
			</security:authorize>



			<a href="${contextRoot}/show/all/products" class="btn btn-warning">
				Continue Shopping</a>

		</div>


	</div>

</div>
<!-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script> -->
<!--  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
<script src="${js}/jquery.js"></script>
<script src="${js}/jquery.elevatezoom.js"></script>
<script>
	// Instantiate EasyZoom instances
	// var $easyzoom = $('.easyzoom').easyZoom();

	// Setup thumbnails example
	$("#zoom_05").elevateZoom({
		zoomType : "inner",
		cursor : "crosshair"
	});
</script>