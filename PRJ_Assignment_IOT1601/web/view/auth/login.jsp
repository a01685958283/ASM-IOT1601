<%-- 
    Document   : login
    Created on : Oct 18, 2022, 11:42:12 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout() {
                window.location.href = 'Logout';
            }
        </script>
        <style>
            body
            {
                margin: 0 auto; /* chỉnh lề giao diện tự động */
                background: url("https://kynguyenlamdep.com/wp-content/uploads/2020/04/hinh-anh-trang-dep.jpg")
            }
            .wrap
            {
                margin: 0 auto; /* chỉnh lề giao diện tự động */
                width: 1000px; /* phải đặt kích thước giao diện cho trang */
                background-color:lightblue;
            }

            .content
            {
                text-align:center;
            }

        </style>
    </head>
    <body>
        <img src="https://upload.wikimedia.org/wikipedia/vi/1/1d/Logo_%C4%90%E1%BA%A1i_h%E1%BB%8Dc_FPT.png" width="300px" >

        <div class="content">
            <form action="login" method="POST">
                Username :<input type="text" name="username"/> <br/>
                Password :<input type="password" name="password" /> <br/>
                <input type="submit" value="Login" />
            </form>
        </div>
    </body>
</html>
