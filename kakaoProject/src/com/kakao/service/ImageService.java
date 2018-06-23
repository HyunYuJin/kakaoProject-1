package com.kakao.service;

import java.util.ArrayList;

import com.kakao.VO.ImageVO;
import com.kakao.dao.KakaoDao;

public class ImageService {

	KakaoDao dao = KakaoDao.getInstance();
	private static ImageService service = new ImageService();
	private ImageService() {}
	public static ImageService getInstance()
	{
		return service;
	}
	
	public void insertImage(ImageVO vo)
	{
		dao.insertImage(vo);
	}
	public ImageVO getMainImage(int productNum)
	{
		return dao.getMainImage(productNum);
	}
	public ArrayList<ImageVO> getMainImageList()
	{
		return dao.getMainImageList();
	}
	
	public ArrayList<ImageVO> getImageList(int productNum)
	{
		return dao.getImageList(productNum);
	}
}
