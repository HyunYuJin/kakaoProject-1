<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.kakao.service.ProductService"
    import = "com.kakao.service.ImageService"
    import = "com.kakao.VO.ProductVO"
    import = "com.kakao.VO.ImageVO"
    import = "java.util.ArrayList"
    import = "com.kakao.controller.HttpUtil"%>
<%
if(session.getAttribute("cUser") == null)
{
   HttpUtil.forward(request, response,"index.jsp");
   return;
}
%>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   ProductService service = ProductService.serviceGetInstance();
   ImageService service_2 = ImageService.getInstance();
   ArrayList<ProductVO> list = service.getProductList();
   ArrayList<ImageVO> imageList = service_2.getImageList(num);
   ImageVO mainImage = service_2.getMainImage(num);
   ProductVO product = null;
   for(ProductVO vo : list)
   {
      if(vo.getNum()==num)
      {
         product = vo;
         break;
      }
   }
   
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>인형/피규어</title>
    <link rel="icon" href="images/peach.jpg" type="image/x-icon">
    <link rel="stylesheet" href="css/category.css" type="text/css">
    <link rel="stylesheet" href="css/mInformation.css" type="text/css">
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/count.js"></script>
    <script src="js/slideShow2.js"></script>
</head>
<body>
    <div id="wrap">
        <header>
            <%@ include file = "headerShopping.jsp" %>
        </header>
        <section>
            <article>
               <div id="table_div">
                  <h4>* 카테고리(캐릭터이름) > 분류(ex.문구) > 상품명</h4>
                  <form action="buyProduct.do" method="post">
                   <table>
                    <tr>
                        <td rowspan="4" class="imgitem"><img src=<%=mainImage.getSrc()%>></td>
                        <th class="name">상품명</th>
                        <td class="name"><%=product.getName()%></td>
                    </tr>        
                    <tr class="won">
                        <th>판매가</th>
                        <td><%=product.getPrice()%>초코</td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td id="amount"><%=product.getPrice()%>초코</td>
                    </tr>
                    <tr>
                        <th>수량</th>
                        <td class="size">
                            <div class="number">
                               <select id="b_option" name = "count">
                               <%
                               for(int x = 1 ; x < 11 ; x++)
                               {%>
                                <option value = "<%=x%>"><%=x%></option>  
                               <%}
                               %>
                               </select>
                            </div>
                        </td>
                    </tr>
                    
                </table>
                   <input type = "hidden" value = "<%=product.getPrice()%>" name = "price">
                   <input type = "hidden" value = "<%=product.getName()%>" name = "productName">
                   <input type = "hidden" value = "<%=product.getNum()%>" name = "productNum">
                    <input type="submit" value="구매하기" id="buy"> 
                </form>
               </div>
               <div id="product_content">
                   <p><%=product.getDetail()%></p>
               </div>
            </article>
        <article>
               <p class="imageN">이미지 상세정보</p>
                <div id="slideShow">
                    <div id="prevNextButtonBox">
                        <img src="images/prev2.png" id="prevButton">
                        <img src="images/next2.png" id="nextButton">
                    </div>
                    <div id="slideShowBox">
                        <div id="slidePanel">
                           <%
                           int cnt = 0;
                           for(int x = 0; x < 6 ; x++)
                           {
                              if(imageList.size() < 6)
                               {
                              System.out.println(" x = " + x);
                               System.out.println((imageList.get(x)).getSrc());
                               %>
                                 <a href="#">
                                    <img src="<%=(imageList.get(x)).getSrc()%>" class="slideImage">
                                   </a>   
                               <%
                                  cnt++;
                                  if(x == imageList.size() - 1)
                                  {
                                     x = -1;
                                  }
                                  if(cnt == 6)
                                  {
                                     break;
                                  }
                               }
                               else
                               {%>
                               System.out.println(imageList.get(x)).getSrc());
                                  <a href="#">
                                    <img src="<%=(imageList.get(x)).getSrc()%>" class="slideImage">
                                   </a>
                               <%}
                               
                           }
                           %>
                        </div>
                    </div>
                </div>
            </article>
        </section>
        <footer>
           <%@ include file = "footerShopping.jsp" %>
    </div>
</body>
</html>