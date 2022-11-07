<%-- 
    Document   : filter
    Created on : 08-Nov-2022, 01:14:47
    Author     : DAT
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                            <a href="Filter?subid=${s.id}">${s.name}(${s.id})</a></br>
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
                                            <a href="Filter?subid=${param.subid}&groupid=${g.id}">${g.name}</br>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <c:if test="${liststudent.size() gt 0}">
            <div id="ctl00_mainContent_divStudents">
                <table class="sortable table" id="id">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Member</th>
                            <th>Code</th>
                            <th>First Name</th>
                            <th>Mid Name</th>
                            <th>Last name</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.liststudent}" var="l" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${l.code}</td>
                                <td>${l.id}</td>
                                <td>${l.firstname}</td>
                                <td>${l.midname}</td>
                                <td>${l.lastname}</td>
                                <td>${l.gmail}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="lecturer/timetable"> Back </a> 
            </div>
        </c:if>
        </body>
</html>
