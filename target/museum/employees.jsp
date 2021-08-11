<%@ page isELIgnored="false" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<c:set var="title" value="All employees" scope="request"/>
<c:import url="includes/head.jsp"/>

<c:import url="includes/header.jsp"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<main id="main">
    <div class="container" id="content">
        <h1>Employees</h1>
        <div class="row mb-2" id="movieTableInfo">
            <p class="text-success">${successWarning}</p>

            <table class="table table-bordered table-striped">
                <thdead>
                    <tr>
                        <th>Full name</th>
                        <th>Position</th>
                        <th>Salary</th>
                        <th>City</th>
                        <th>State</th>
                        <th>With us</th>
                    </tr>
                </thdead>
                <tbody>
<c:forEach items="${employees}" var="emp">

    <tr class="employeeRow" onclick="window.location.href = '${pageContext.request.contextPath}/employee?id=${emp.id}'">
        <td>${emp.firstName} ${emp.lastName}</td>
        <td>${emp.position}</td>
        <td>${emp.salary}</td>
        <td>${emp.city}</td>
        <td>${emp.state}</td>
        <td>${emp.withUs}</td>
        <sec:authorize access="hasRole('ADMIN')">
        <td>
            <form:form action="${pageContext.request.contextPath}/deleteEmployee" method="post">
                <input type="hidden" name="empId" value="${emp.id}">
                <input type="image" src="${pageContext.request.contextPath}/resources/images/delete-icon.png" class="image"  alt="delete image" />
            </form:form>
        </td>
        </sec:authorize>
    </tr>
</c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <% session.removeAttribute("successWarning");%>

</main>

<c:import url="includes/footer.jsp"/>


