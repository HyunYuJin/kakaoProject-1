<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>상품슬라이드관리</title>
    <link rel="icon" href="images/lion.png" type="image/x-icon">
    <link rel="stylesheet" href="css/indexAdmin.css" type="text/css">
    <link rel="stylesheet" href="css/UserAdmin.css" type="text/css">
</head>
<body>
    <div id="wrap">
        <header>
            <%@ include file = "headerAdmin.jsp" %>
        </header>
        <section>
            <article>
              <p>상품슬라이드관리</p>
               <form action="imageInsert.do" method="post">
                    <div id="UserTable">
                    <table>
                       <tr>
                           <th class="first" width="500px">상품번호</th>
                           <td><input type = "text" name = "num"></td>
                       </tr>
                        <tr>
                            <th class="first" width="500px">상품서브이미지</th>
                            <td><input type = "text" name = "src"></td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                    <div class="button1">
                            <input type="submit" value="추가">
                        </div>
                    </div>
               </form>
            </article>
        </section>
        <footer>
             <%@ include file = "footerAdmin.jsp" %>
        </footer>
    </div>
</body>
</html>