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
	
	public void insertImages(String saveDir, ArrayList<String> fileNames,int productNum)
	{
		dao.insertImages(saveDir,fileNames,productNum);
	}
	
	public void insertImage(String saveDir, String fileName,int productNum)
	{
		dao.insertImages(saveDir,fileName,productNum);
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
	
	public void deleteImage(int imageNum)
	{
		dao.deleteImage(imageNum);
	}
	
	public void deleteImages(int productNum) //한번에 다지울때
	{
		
		dao.deleteImages(productNum);
	}
	
	public boolean isMain(int imageNum)
	{
		return dao.isMain(imageNum);
	}

	public void insertImage(String realSaveDir, String file, int num, String pos) //바뀌는 자리가 main인경우 
	{
		// TODO Auto-generated method stub
		dao.insertImages(realSaveDir,file,num,pos);
	}
	
}
