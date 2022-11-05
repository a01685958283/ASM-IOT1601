<%-- 
    Document   : list
    Created on : 03-Nov-2022, 10:22:52
    Author     : DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="list" method="POST">
            <table>
                <tr>
                    <th> did </th>
                    <th> dname </th>
                </tr>
                <c:forEach items="${requestScope.dummy}" var="e">
                    <tr>
                        <td> ${d.did} </td>
                        <td> ${d.dname} </td>
                    </tr>
                </c:forEach>
            </table>
       <form>
    </body>
</html>
