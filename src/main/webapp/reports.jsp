<%@ page isELIgnored="false"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="title" value="Museum of Interesting Things - Home" scope="request"/>
<c:import url="includes/head.jsp"/>

<c:import url="includes/header.jsp"/>

<main id="main">

    <div class="container" id="content">
        <h1>Reports</h1>
        <p class="text-danger">${warning}</p>
        <p class="text-success">${successWarning}</p>

        <form:form action="${pageContext.request.contextPath}/generateReports"
                   method="get"
                   class="mb-3"
        >
<%-- REPORTS CHECKBOX + SHORT DESC           --%>
        <div class="list-group">
            <label class="list-group-item">
                <input class="form-check-input me-1" type="checkbox" name="reports" value="avgValuesReport">
                Average items' worth value on each room
                <ul>
                    <li>
                        <small class="text-muted">Info on the room, the detailed location and the average value. </small>
                    </li>
                    <li>
                        <small class="text-muted">Sorted by the room and then the location</small>
                    </li>
                </ul>
            </label>
            <label class="list-group-item">
                <input class="form-check-input me-1" name="reports" type="checkbox" value="overallItemDaysReport">
                Number of days artifact(s) have been on display in museum(overall)
                <ul>
                    <li>
                        <small class="text-muted">Days on display are calculated by finding the earliest date an item was on display and subtracting it from today’s date</small>
                    </li>
                    <li>
                        <small class="text-muted">If the item was lost, then the days on display are calculated by finding the earliest date an item was on display and subtracting it from the date it was lost.</small>
                    </li>
                </ul>
            </label>
            <label class="list-group-item">
                <input class="form-check-input me-1" name="reports" type="checkbox" value="currentItemsOnDisplaysReport">
                Current items on display
                <ul>
                    <li>
                        <small class="text-muted">Lost items are not displayed.</small>
                    </li>
                    <li>
                        <small class="text-muted">If an item has moved, only the last location should be displayed</small>
                    </li>
                    <li>
                        <small class="text-muted">Sorted by the artifact and then the room</small>
                    </li>
                </ul>
            </label>
        </div>
            <div class="row center">
                <div class="col text-center center">
                    <button type="submit" class="btn btn-success mx-auto">Generate report(s)</button>
                </div>
            </div>

        </form:form>

        <hr>
<%--REPORTS BLOCK--%>
        <div class="row">
            <c:if test="${avgValuesReportRows != null}">
            <div class="col-lg-4 col-sm-12">
                <table class="table table-bordered table-striped">
                    <legend>Item's average value per room</legend>
                    <c:forEach items="${avgValuesReportColumns}" var="col">
                        <th>
                            <c:out value="${col}"/>
                        </th>
                    </c:forEach>
                    </tr>
                    <c:forEach items="${avgValuesReportRows}" var="row">
                        <tr>
                            <c:forEach items="${row}" var="col">
                                <td><c:out value="${col}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            </c:if>

<c:if test="${overallItemDaysReportRows != null}">
<div class="col-lg-4 col-sm-12">
                <table class="table table-bordered table-striped">
                    <legend>Items overall time in museum report</legend>
                    <c:forEach items="${overallItemDaysReportColumns}" var="col">
                        <th>
                            <c:out value="${col}"/>
                        </th>
                    </c:forEach>
                    </tr>
                    <c:forEach items="${overallItemDaysReportRows}" var="row">
                        <tr>
                            <c:forEach items="${row}" var="col">
                                <td><c:out value="${col}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
</c:if>

<c:if test="${currentItemsOnDisplaysReportRows != null}">
<div class="col-lg-4 col-sm-12">
                <table class="table table-bordered table-striped">
                    <legend>Items that are currently exposed report</legend>
                    <c:forEach items="${currentItemsOnDisplaysReportColumns}" var="col">
                        <th>
                            <c:out value="${col}"/>
                        </th>
                    </c:forEach>
                    </tr>
                    <c:forEach items="${currentItemsOnDisplaysReportRows}" var="row">
                        <tr>
                            <c:forEach items="${row}" var="col">
                                <td><c:out value="${col}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
</c:if>
        </div>
        <hr>

<%--UPDATE DATE DAMAGED BLOCK      --%>
        <div class="row">
            <div>
                <p class="text-muted"><small>The following update sets the date damaged to <i>entered date</i> for all the items that were in <i>specified room</i> on that date</small></p>
            </div>
        </div>
        <div class="row">
            <form:form action="${pageContext.request.contextPath}/updateDamagedItems"
                       method="post"
                       class="mb-3">
                <div class="form-group row">
                    <label for="inputDateWhenDamaged" class="col-sm-2 col-form-label">Date when damaged</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" required name="inputDateWhenDamaged" id="inputDateWhenDamaged" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputRoomName" class="col-sm-2 col-form-label">Room damaged</label>
                <div class="col-sm-10">
                        <input type="text" class="form-control" required name="inputRoomName" id="inputRoomName" >
                    </div>
                </div>
                <div class="row center">
                    <div class="col text-center center">
                        <button type="submit" class="btn btn-success mx-auto">Set date damaged for items</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</main>

<% session.removeAttribute("successWarning");%>
<% session.removeAttribute("warning");%>