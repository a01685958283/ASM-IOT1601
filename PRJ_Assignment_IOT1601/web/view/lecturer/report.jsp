<%-- 
    Document   : calculate
    Created on : 08-Nov-2022, 11:35:07
    Author     : DAT
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
    </head>
    <body>
        <table >
            <thead>
                <tr>
                    <th>Course</th>
                    <th>Group</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td valign='top'>
                        <div id="ctl00_mainContent_divCourse">
                            <table class="table">
                                <c:forEach items="${requestScope.sub}" var="s">
                                    <tr>
                                        <td>
                                           ${s.name}(${s.id})</a></br>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </table>
                        </div>
                    </td>
                    <td valign='top'>
                        <div id="ctl00_mainContent_divGroup">
                            <table class="table">
                                <c:forEach items="${requestScope.group}" var="g">
                                    <tr>
                                        <td>
                                            ${g.name}</br>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="sortable table" id="id">
            <thead>
                <tr class="bg-light-gray">
                    <th>No</th>
                    <th>Code</th>
                    <th>StudentName</th>
                    <th>Absent(%)</th>
                        <c:forEach items="${requestScope.sessions}" var="se">
                        <th class="text-uppercase">
                            <fmt:formatDate value="${se.date}" pattern="dd/MM"/></br>
                        </th>
                    </c:forEach>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.students}" var="s" varStatus="loop">
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>
                            ${s.id}
                        </td>
                        <td>
                            ${s.firstname} ${s.midname} ${s.lastname}
                        </td>
                        <td>
                            <c:set var = "count" value = "0"/>
                            <c:forEach items="${requestScope.attendances}" var="a">
                                <c:if test="${a.student.id eq s.id and a.present eq '0'}">
                                    <c:set var = "count" value = "${count + 1}"/>
                                </c:if>
                            </c:forEach>
                            <fmt:formatNumber type = "percent" minFractionDigits = "0" value = "${(count/sessions.size())}" />
                        </td>
                        <c:forEach items="${requestScope.sessions}" var="se">
                            <c:set var = "flag" value = "false"/>
                            <c:forEach items="${requestScope.attendances}" var="a">
                                <c:if test="${a.student.id eq s.id and a.session.id eq se.id}">
                                    <c:set var = "flag" value = "true"/>
                                    <c:choose>
                                        <c:when test="${a.present eq '0'}">
                                            <td style="color: green">P</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td style="color: red">A</td>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:forEach>
                            <c:if test="${not flag}">
                                <td>-</td>
                            </c:if>
                        </c:forEach>
                    </tr>
                </c:forEach>               
            </tbody>
        </table>    
    </body>
</html>
