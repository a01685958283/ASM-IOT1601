<%-- 
    Document   : Report
    Created on : 13-Oct-2022, 06:42:00
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
    </style>
    </head>
    <body>
        <form method="POST" action="report">
            <table>
                <thead>
                    <tr>
                    Class:  <u>IOT1601<u>  
                    </tr>
                    <tr>
                        <th>No</th>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Absent(%)</th>
                        <th>06/09</th>
                        <th>08/09</th>
                        <th>08/09</th>
                        <th>13/09</th>
                        <th>15/09</th>
                        <th>15/09</th>
                        <th>20/09</th>
                        <th>22/09</th>
                        <th>22/09</th>
                        <th>27/09</th>                     
                    </tr>
                </thead>     
                <tbody>   
                    <tr>
                        <td>1</td>  
                        <td>HE140145</td>                   
                        <td>Phan Hoàng Tùng</td>
                        <td>30%</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>                                          
                    </tr>     
                    <tr>
                        <td>2</td>  
                        <td>HE140739</td>                   
                        <td>Nguyễn Minh	Tuấn</td>
                        <td>0%</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>                                          
                    </tr>     
                    <tr>
                        <td>3</td>  
                        <td>HE141088</td>                   
                        <td>Nguyễn Minh	Hoàng</td>
                        <td>20%</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>                                          
                    </tr>     
                    <tr>
                        <td>4</td>  
                        <td>HE141428</td>                   
                        <td>Nguyễn Phạm Bình Minh</td>
                        <td>10%</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>
                        <td>P</td>                                          
                    </tr>     
                    <tr>
                        <td>5</td>  
                        <td>HE141476</td>                   
                        <td>Nguyễn Thế Thái</td>
                        <td>50%</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td>P</td>
                        <td style="color: red">A</td>
                        <td style="color: red">A</td>
                        <td>P</td>                                          
                    </tr>     
                </tbody>       
        </form>
    </body>
</html>
