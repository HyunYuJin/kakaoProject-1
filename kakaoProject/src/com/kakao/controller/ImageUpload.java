package com.kakao.controller;

import java.util.ArrayList;
import java.util.HashMap;

public class ImageUpload {

	private static HashMap<String,String> list_cha = null;
	private static HashMap<String,String> list_cate = null;
	
	private static ImageUpload iu = new ImageUpload();
	
	private ImageUpload()
	{
		if(list_cha == null && list_cate == null)
			initList();
	}
	
	public static ImageUpload getInstance()
	{
		return iu;
	}
	
	private void initList()
	{
		list_cha = new HashMap<String,String>();
		list_cate = new HashMap<String,String>();
		list_cha.put("lion","1라이언");
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
	
	/*public HashMap<String,ArrayList<String>> transfer(String cha, String category)
	{
		HashMap<String,ArrayList<String>> transferVal = new HashMap<String,ArrayList<String>>();
		return transferVal;
	}*/
}
