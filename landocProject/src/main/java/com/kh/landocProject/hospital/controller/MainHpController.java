package com.kh.landocProject.hospital.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.hospital.Exception.MainHpException;
import com.kh.landocProject.hospital.model.service.MainHpService;
import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.member.model.vo.DrClient;

@Controller
public class MainHpController {

	@Autowired
	MainHpService mainHpService;
	
	
	
	// 화면 구현 테스트 용
	@RequestMapping("preEditHp.do")
	public String preEditHp(){
		
		return "hospital/modifyHospital";
	}
	
	
	
	// 병원 수정 페이지(데이터 불러오기)
	@RequestMapping("editHp.do")
	public ModelAndView editHp(HttpSession session, ModelAndView mv, MainHp hp, MainHp hpBasic) {
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		
		int hpNo = loginDrClient.getHpNo();
		int hpCateCode = loginDrClient.getHpCateCode();
		
		
		hp.setHpNo(hpNo);
		hp.setHpCateCode(hpCateCode);
		
//		System.out.println("controller에서 hpNo : " + hpNo);
//		System.out.println("controller에서 hpCateCode : " + hpCateCode);
		
		// 1. 병원 기본정보 + 진료과목 + 설명 추출
		hpBasic = mainHpService.selectOneHp(hp);
//		System.out.println("controller에서 selectOneHp : " + hpBasic);
		
		// 2. 병원 사진 추출
		ArrayList<MainHp> hpPhoto = mainHpService.selectHpPhoto(hp);
//		System.out.println("controller에서 hpPhoto : " + hpPhoto);
		
		
		// 3. 병원 영업 시간 추출 
		ArrayList<MainHp> hpTime = mainHpService.selectHpTime(hp);
//		System.out.println("controller에서 hpTime : " + hpTime);
		
		
		if(hpBasic != null && hpTime != null && hpPhoto != null) {
			mv.addObject("hpBasic", hpBasic);
			mv.addObject("hpPhoto", hpPhoto);
			mv.addObject("hpTime", hpTime);
			mv.setViewName("hospital/modifyHospital");

		}else {
			System.out.println("병원 정보 불러오기 실패!");
		}
		
		return mv;
	}
	
	

	 
	   
	@RequestMapping(value="hpSearch.do")
	public ModelAndView hpSearch(ModelAndView mv, HttpSession session,HpSearch hp,@RequestParam(value="area") String area, @RequestParam(value="hpSearch") String hpTitle) throws MainHpException{
		  
	      
	   
	      String[] hpNameSplit = hpTitle.split("");
	      String hpNameLike ="";
	      for(int i =0; i<hpNameSplit.length;i++) {
	    	 
	    	   	if(i==hpNameSplit.length-1) {
	    	   		hpNameLike += "%"+hpNameSplit[i]+"%";
	    	   	}else {
	    	   	    hpNameLike += "%"+hpNameSplit[i];
	    	   	}
	      }
	      hp.setArea(area);
	      hp.setHpName(hpNameLike);
	   
	      ArrayList<HpSearch> hpList = mainHpService.hpSearchListNormal(hp);
	      if(hpList !=null) {
	    	  mv.addObject("hp",hpList);
	    	  mv.addObject("area",area);
	    	  mv.addObject("hpName", hpTitle);
	    	  mv.setViewName("hospital/hpSearch");
	      }else {
	    	  throw new MainHpException("병원검색 실패!");
	      }
	      
	      return mv;
	  }
	
	@RequestMapping(value="hpCate.do")
	public ModelAndView hpCateSearch(ModelAndView mv, HttpSession session,@RequestParam(value="cateName") String cateName) throws MainHpException{
		  ArrayList<HpSearch> hpList = mainHpService.hpCateSearchList(cateName);
	      
	      if(hpList !=null) {
	    	  mv.addObject("hp",hpList);
	    	  mv.addObject("cateName", cateName);
	    	  mv.setViewName("hospital/hpSearch");
	      }else {
	    	  throw new MainHpException("진료과목 검색 실패!");
	      }
	      
	      return mv;
	  }
	
	
	
	
}
