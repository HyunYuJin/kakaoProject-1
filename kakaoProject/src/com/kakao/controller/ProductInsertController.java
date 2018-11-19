package com.kakao.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.VO.ProductVO;
import com.kakao.service.ProductService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductInsertController implements Controller {

	static HashMap<String,String> list_cha = null;
	static HashMap<String,String> list_cate = null;
	
	public void initList()
	{
		list_cha = new HashMap<String,String>();
		list_cate = new HashMap<String,String>();
		list_cha.put("llion","1라이언");
		list_cha.put("apeach","2어피치");
		list_cha.put("neo","3네오");
		list_cha.put("muzi","4무지");
		list_cha.put("tubo","5튜브");
		list_cha.put("jay_g","6제이지");
		list_cha.put("frado","7프로도");
		
		list_cate.put("stationery","문구");
		list_cate.put("clothes","의류");
		list_cate.put("doll","인형");
		list_cate.put("goods","잡화");
		list_cate.put("jewelry","쥬얼리");
	}
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//ImageUploadController iuc = new ImageUploadController();
		//상품 정보 생성
		ProductService service = ProductService.serviceGetInstance();
		req.setCharacterEncoding("UTF-8");
		int maxSize = 3 * 1024 * 1024;
		String encoding = "UTF-8";
		String saveDir = "C:\\dev\\workplace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\kakaoProject\\쇼핑몰\\쇼핑몰\\test";
		System.out.println(req.getRealPath("쇼핑몰/쇼핑몰/test"));
		MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		ProductVO vo = new ProductVO();
		//System.out.println(multi.getParameter("name"));
		String name = multi.getParameter("name").trim();
		int price = Integer.parseInt(multi.getParameter("price"));
		String detail = multi.getParameter("detail");
		String category = multi.getParameter("category");
		//System.out.println(category);
		String cha = multi.getParameter("cha");
		//System.out.println(cha);
		vo.setName(name);
		vo.setDetail(detail);
		vo.setPrice(price);
		vo.setCategory(category);
		vo.setCha(cha);
		//이미지 정보 생성
		if(list_cha == null && list_cate == null)
			initList();
		String formname;
		String fileName;
		ArrayList<String> fileNames = new ArrayList<String>(); //dao에 보내져서 실질적으로 db에 저장될 파일 이름들 -> savedir과 함계 보내짐
		Enumeration form = multi.getFileNames();
		while(form.hasMoreElements())
		{
			formname = (String) form.nextElement();
			fileName = multi.getFilesystemName(formname);
			if(fileName != null)
				fileNames.add(fileName); //null이아니면 fileNames에 추가 
			System.out.println(fileName);
		}
		/*System.out.println(list_cha.get(cha));
		System.out.println(list_cate.get(category));*/
		String realSaveDir = "쇼핑몰/쇼핑몰/test"; //실제 저장하는 파일 위치
		/*System.out.println(realSaveDir);*/
		service.insertProduct(vo,realSaveDir,fileNames);
		//iuc.execute(req, res); //이미지를 업로드하는 컨트롤러
		HttpUtil.forward(req, res,"ProductAdmin.jsp");
		return;
	}

}
