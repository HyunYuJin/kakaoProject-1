<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.kakao.service.ProductService"
    import = "com.kakao.VO.ProductVO"
    import = "com.kakao.service.ImageService"
    import = "com.kakao.VO.ImageVO"
    import = "java.util.ArrayList"
    import = "com.kakao.controller.HttpUtil"
    %>
<% 
	if(session.getAttribute("admin") == null)
	{
		HttpUtil.forward(request, response,"index.jsp");
		return;
	}
%>
<%
	ProductService service = ProductService.serviceGetInstance();
	ImageService service_2 = ImageService.getInstance();
	int num = Integer.parseInt(request.getParameter("num"));
	ProductVO product = null;
	ArrayList<ProductVO> list = service.getProductList();
	for(ProductVO vo : list)
	{
		if(vo.getNum()==num)
		{
			product = vo;
			break;
		}
	}
	ArrayList<ImageVO> list_i = service_2.getImageList(product.getNum());
	String path = request.getRealPath("/");
	/* ImageVO mainImage = service_2.getImageList(product.getNum()); */
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>필드관리</title>
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
              <p>상품수정</p>
               <form action="productUpdate.do" enctype="multipart/form-data" method="post">
                    <div id="UserTable">
                    <table>
                       <tr>
                           <th class="first">상품명</th>
                           <td><input type = "text" name = "name" value = "<%=product.getName()%>"></td>
                           <th class="first">가격</th>
                           <td><input type = "text" name = "price" value = "<%=product.getPrice()%>"></td>
                       </tr>
                        <tr>
                            <th class="first">캐릭터</th>
                            <td>
                                <select name="cha" id="sort">
                                    <option value="llion">Lion</option>
                                    <option value="apeach">Apeach</option>
                                    <option value="neo">Neo</option>
                                    <option value="muzi">Muzi/kun</option>
                                    <option value="tubo">Tube</option>
                                    <option value="jay_g">Jay-G</option>
                                    <option value="frodo">Frodo</option>
                                </select>
                            </td>                        
                        </tr>
                        <tr>
                            <th class="first">상품설명</th>
                            <td><input type = "text" name = "detail" value = "<%=product.getDetail()%>"></td>
                            <th class="first">분류</th>
                            <td>
                                <select name="category" id="sort">
                                    <option value="stationery">Stationery</option>
                                    <option value="clothes">Clothes</option>
                                    <option value="doll">Doll</option>
                                    <option value="goods">Goods</option>
                                    <option value="jewelry">Jewelry</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <article id="uploadForm">                    
                              <div class="uploadDiveWrap">                           	
                              	<%
			                   int n = 1;
			                   String name = "file" + n;
			                   String image = "image" + n;
			                    for(ImageVO i : list_i)
			                    {
			                    	name = "file" + n;
			                    	image = "image" + n;
			                    	n++;
			                    	String realPath = path + i.getSrc();			                    	
			                    	%>
			                    	<div>
			                    	<img src = <%=i.getSrc()%>>
			                    	<input type = "hidden" name = <%=name%> value = "<%=i.getNum()%>">
			                    	<input type = "file" name = <%=image%> size =40>      
			                    	</div>       	
			                    	<%
			                    }
			                    while(n <= 6)
			                    {
			                    	name = "file" + n;
			                    	image = "image" + n;
			                    %>                    	
			                    	<div>			                    	
			                    	<input type = "hidden" name = <%=name%> value ="0">           
			                    	<input type = "file" name =  <%=image%> size=40>
			                    	</div>       
			                    <%
			                    n++;
			                    }
			                    %>                          
                              </div>                       
                        </article>   
                    <div class="button1">
                          <input type="hidden" name="num" value = "<%=product.getNum()%>">
                          <input type="submit" value="저장">
                    </div>
                     </form>
                    </div>
        <footer>
           <%@ include file = "footerAdmin.jsp" %>
        </footer>
    
</body>
</html>