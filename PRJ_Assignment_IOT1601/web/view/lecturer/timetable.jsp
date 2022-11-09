<%-- 
    Document   : timetable
    Created on : Oct 15, 2022, 9:30:31 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            table, th, td{
                border:1px solid #868585;
            }
            table{
                border-collapse:collapse;
                width:100%;
            }
            th, td{
                text-align:left;
                padding:10px;
            }

        </style>
    
    <body>
    </head>
        Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
        <form action="timetable" method="GET">
            <input type="hidden" name="lid" value="${param.lid}"/>
            From: <input type="date" name="from" value="${requestScope.from}"/>
            To: <input type="date" name="to" value="${requestScope.to}"/>
            <input type="submit" value="View"/> 
        </form>
        <form >
            <div class="table-responsive">    
        <table border="1px">
            <tr>
                <td> </td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>
                        <fmt:formatDate value="${d}" pattern="dd/MM"/><br/>
                        ${helper.getDayNameofWeek(d)}
                    </td>
                </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="slot">
                <tr>
                    <td>Slot ${slot.id}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.sessions}" var="ses">
                                <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.slot.id eq slot.id)}">
                                    <a href="../lecture/filter?subid=${ses.group.subject.id}&groupid=${ses.group.id}">${ses.group.subject.id}</a>
                                    <br/>
                                    at ${ses.room.name}<br/>
                                    <c:if test="${ses.attanded}">
                                        <a style="color: blue">(Attended)</a><br/>
                                        <a style="color: purple" >(${slot.tdescription})</a><br/>   
                                        <a href="../lecturer/takeatt?id=${ses.id}"> Edit </a> -  
                                        <a href="../lecturer/report?subid=${ses.group.subject.id}&groupid=${ses.group.id}"> View </a>
                                    </c:if>
                                    <c:if test="${!ses.attanded}">
                                        <a style="color: red">(Not yet)</a><br/>
                                        <a style="color: purple" >(${slot.tdescription})</a><br/>   
                                        <a href="../lecturer/takeatt?id=${ses.id}"> Take </a> -
                                        <a href="../lecturer/report?subid=${ses.group.subject.id}&groupid=${ses.group.id}"> View </a>  
                                    </c:if><br/>                                    
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
