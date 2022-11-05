<%-- 
    Document   : attendance
    Created on : 12-Oct-2022, 22:38:39
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
        <form method="POST" action="attendance">
            <table border:1px >
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Member</th>
                        <th>Code</th>
                        <th>Surname</th>
                        <th>Middle name</th>
                        <th>Given name</th>
                        <th>Status</th>
                        <th>Comment</th>
                    </tr>
                </thead>
                <tbody>                                        
                    <tr>
                        <td>1</td>                   
                        <td>TungPHHE140145</td>
                        <td>HE140145</td>
                        <td>Phan</td>
                        <td>Hoàng</td>
                        <td>Tùng</td>
                        <td>
                            <input type="radio" value="present"/>Present
                            <input type="radio" value="absent"/>Absent
                        </td>
                        <td>
                            <input type="text" name="comment"/>
                        </td>
                <input type="text" value="19:00:00" name="recordtime" hidden/>
                </tr>     
                <tr>
                    <td>2</td>                   
                    <td>TuanNMHE140739</td>
                    <td>HE140739</td>
                    <td>Nguyễn</td>
                    <td>Minh</td>
                    <td>Tuấn</td>
                    <td>
                        <input type="radio" value="present"/>Present
                        <input type="radio" value="absent"/>Absent
                    </td>
                    <td>
                        <input type="text" name="comment"/>
                    </td>
                <input type="text" value="19:00:00" name="recordtime" hidden/>
                </tr>       
                <tr>
                    <td>3</td>                   
                    <td>HoangNMHE141088</td>
                    <td>HE141088</td>
                    <td>Nguyễn</td>
                    <td>Minh</td>
                    <td>Hoàng</td>
                    <td>
                        <input type="radio" value="present"/>Present
                        <input type="radio" value="absent"/>Absent
                    </td>
                    <td>
                        <input type="text" name="comment"/>
                    </td>
                <input type="text" value="19:00:00" name="recordtime" hidden/>
                </tr>       
                <tr>
                    <td>4</td>                   
                    <td>MinhNPBHE140739</td>
                    <td>HE140739</td>
                    <td>Nguyễn</td>
                    <td>Phạm Bình</td>
                    <td>Minh</td>
                    <td>
                        <input type="radio" value="present"/>Present
                        <input type="radio" value="absent"/>Absent
                    </td>
                    <td>
                        <input type="text" name="comment"/>
                    </td>
                <input type="text" value="19:00:00" name="recordtime" hidden/>
                </tr>       
                <tr>
                    <td>5</td>                   
                    <td>ThaiNTHE141476</td>
                    <td>HE141476</td>
                    <td>Nguyễn</td>
                    <td>Thế</td>
                    <td>Thái</td>
                    <td>
                        <input type="radio" value="present"/>Present
                        <input type="radio" value="absent"/>Absent
                    </td>
                    <td>
                        <input type="text" name="comment"/>
                    </td>
                <input type="text" value="19:00:00" name="recordtime" hidden/>
                </tr>       
                </tbody>
            </table>
            <input type="submit" value="Take"/>
        </form>
    </body>
</html>
