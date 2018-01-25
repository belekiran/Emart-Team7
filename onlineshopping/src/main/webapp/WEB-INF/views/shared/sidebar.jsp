<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
function work(a)
{
	$("#a_"+a).slideToggle("slow");

}
</script>
<div style="position: fixed; float: left;">
<p class="lead">Shop Name</p>

<div class="list-group">

	<c:forEach items="${categories}" var="category">
		<c:if test="${category.parent == 0}">
			<div class="list-group-item" onclick="work(${category.id})">
				<%-- 	<a href="${contextRoot}/show/category/${category.id}/products"
				class="list-group-item" id="a_${category.name}">
				${category.name} </a> --%>
				<span class="glyphicon glyphicon-chevron-right">  ${category.name}</span>
			</div>
			<div id="a_${category.id}" style="display: none">
				<c:forEach items="${categories}" var="subcategory">
					<c:if test="${category.id == subcategory.parent}">
						<%-- <a href="${contextRoot}/show/category/${subcategory.id}/products"
							class="list-group-item" id="a_${subcategory.name}">${subcategory.name}</a> --%>
						<c:if test="${subcategory.flag=='false'}">
							<div class="list-group-item" onclick="work(${subcategory.id})">
								<span class="glyphicon glyphicon-hand-down">  ${subcategory.name}</span>
							</div>
						</c:if>
						<c:if test="${subcategory.flag=='true'}">
							<a href="${contextRoot}/show/category/${subcategory.id}/products"
								class="list-group-item" id="a_${subcategory.name}">
								<span class="glyphicon glyphicon-thumbs-up">  ${subcategory.name}</span>
							<%-- 	${subcategory.name} --%>
								</a>
						</c:if>
						<div id="a_${subcategory.id}" style="display: none">
							<c:forEach items="${categories}" var="lsubcategory">
								<c:if test="${subcategory.id == lsubcategory.parent}">
									<a
										href="${contextRoot}/show/category/${lsubcategory.id}/products"
										class="list-group-item" id="a_${lsubcategory.name}">
									<%-- 	${lsubcategory.name} --%>
										<span class="glyphicon glyphicon-thumbs-up">  ${lsubcategory.name}</span>
										</a>
								</c:if>

							</c:forEach>
						</div>

					</c:if>

				</c:forEach>
			</div>
		</c:if>

	</c:forEach>

	<%-- 	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products"
			class="list-group-item" id="a_${category.name}">
			${category.name}
	</a>

		<c:forEach items="${subcategories}" var="subcategory">
			<c:if test="${category.id == subcategory.parent}">
				<a href="${contextRoot}/show/category/${subcategory.id}/products"
					class="list-group-item" id="a_${subcategory.name}">${subcategory.name}</a>
			</c:if>

		</c:forEach>
	</c:forEach> --%>


</div>

</div>