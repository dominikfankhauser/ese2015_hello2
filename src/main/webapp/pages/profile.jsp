<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<c:import url="template/header.jsp" />

<c:choose>
	<c:when test="${page_error != null }">
        <div class="alert alert-error">
        	<h4>Error!</h4>
            ${page_error}
        </div>
	</c:when>
	<c:otherwise>
		<h4>User information:</h4>
		<table>
			<tr>
				<td><b>Id:</b></td>
				<td><c:out value="${user.id}"></c:out></td>
			</tr>
			<tr>
				<td><b>First name:</b></td>
				<td><c:out value="${user.firstName}"></c:out></td>
			</tr>
			<tr>
				<td><b>Last name:</b></td>
				<td><c:out value="${user.lastName}"></c:out></td>
			</tr>
			<tr>
				<td><b>Email:</b></td>
				<td><c:out value="${user.email}"></c:out></td>
			</tr>
			<tr>
				<td><b>Team:</b></td>
				<td>
					<c:choose>
						<c:when test="${user.team != NULL}">
							<c:out value="${user.team.name}"></c:out>
						</c:when>
						<c:otherwise>
							<i>No team registered!</i>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</table>
		
	</c:otherwise>
</c:choose>

<c:import url="template/footer.jsp" />