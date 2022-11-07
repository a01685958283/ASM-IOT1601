<%-- 
    Document   : studentlist
    Created on : 07-Nov-2022, 11:21:29
    Author     : DAT
--%>

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
            
            table tr:nth-child(){
                background-color:white;
            }
            table tr:nth-child(1){
                background-color:skyblue;
            }
        </style>
    </head>
    <body>
        Group: ${requestScope.sesStd.group.name} <br/>
        Semester: ${requestScope.sesStd.group.sem}-${requestScope.sesStd.group.year} <br/>      
        Subject: ${requestScope.sesStd.group.subject.id} - ${requestScope.sesStd.group.subject.name} <br/>
        <form>
            <input type="hidden" name="sesid" value="${param.id}"/>
            <table border="1px">
                <tr>
                    <td>No</td>
                    <td>Member</td>
                    <td>Code</td>
                    <td>First Name</td>
                    <td>Mid Name</td>
                    <td>Last Name</td>
                    <td>Email</td>
                </tr>
                <c:forEach items="${requestScope.sesStd.atts}" var="a" varStatus="loop">
                 <tr>
                    <td>${loop.index+1}</td>
                    <td>${a.student.id}</td>
                    <td>${a.student.code}</td>
                    <td>${a.student.firstname}</td>
                    <td>${a.student.midname}</td>
                    <td>${a.student.lastname}</td>
                    <td>${a.student.gmail}</td>
                </tr>                    
                </c:forEach>            
            </table>
            <a href="../lecturer/timetable"> Back </a>  
        </form>
    </body>
</html>
