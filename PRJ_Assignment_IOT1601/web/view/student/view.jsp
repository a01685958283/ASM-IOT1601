<%-- 
    Document   : view
    Created on : 13-Oct-2022, 07:13:36
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
        </style>
    </head>
    <body>
        <form >
            <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Group</th>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Status</th>
                    <th>Comment</th>
                    <th>Taker</th>
                    <th>Record Time</th> 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>    
                    <td>IOT1601</td>                   
                    <td>HE140145</td>
                    <td>Phan Hoàng Tùng</td>
                    <td>Present</td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>06/09/2022 10 38 00 AM</td>
                </tr>   
                <tr>
                    <td>2</td>    
                    <td>IOT1601</td>                   
                    <td>HE140739</td>
                    <td>Nguyễn Minh Tuấn</td>
                    <td>Present</td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>06/09/2022 10 38 00 AM</td>
                </tr>   
                <tr>
                    <td>3</td>    
                    <td>IOT1601</td>                   
                    <td>HE141088</td>
                    <td>Nguyễn Minh Hoàng</td>
                    <td>Present</td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>06/09/2022 10 38 00 AM</td>
                </tr>   
                <tr>
                    <td>4</td>    
                    <td>IOT1601</td>                   
                    <td>HE141428</td>
                    <td>Nguyễn Phạm Bình Minh</td>
                    <td style="color: red">Absent</td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>06/09/2022 10 38 00 AM</td>
                </tr>   
                <tr>
                    <td>5</td>    
                    <td>IOT1601</td>                   
                    <td>HE141476</td>
                    <td>Nguyễn Thế Thái</td>
                    <td>Present</td>
                    <td></td>
                    <td>sonnt5</td>
                    <td>06/09/2022 10 38 00 AM</td>
                </tr>                   
            </tbody>
            </table>
            <input type="submit" value="Edit"/>
        </form>
    </body>
</html>
