package com.kh.landocProject.admin.askDr.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.landocProject.admin.askDr.model.service.AdminAskDrService;
import com.kh.landocProject.admin.askDr.model.vo.AdminAskDrBoard;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.askDr.controller.MainAskDrController;
import com.kh.landocProject.askDr.model.vo.AskDrReply;
import com.kh.landocProject.common.Pagination;

@Controller
public class AskDrController {

	@Resource
	private AdminAskDrService adminAskDrServiceImpl;
	
	@RequestMapping(value="askDrManage.do", method=RequestMethod.GET)
	public ModelAndView askDrManage(ModelAndView mv,
														@RequestParam int pageNo) {
		int listCount = adminAskDrServiceImpl.getBoardListCount();
		PageInfo pageInfo = Pagination.getPageInfo(pageNo, listCount);
		
		List<AdminAskDrBoard> boardList = adminAskDrServiceImpl.getBoardList(pageInfo);
		
		mv.addObject("boardList", boardList);
		mv.addObject("pageInfo", pageInfo);
		mv.addObject("type", 1);
		mv.setViewName("admin/askDr/askDrManage");
		return mv;
	}
	
	@RequestMapping(value="adminAskDrDetailPost.do", method=RequestMethod.GET)
	public ModelAndView adminAskDrDetailPost(ModelAndView mv,
																	@RequestParam int adNo,
																	@RequestParam int pageNo) {
		
		AdminAskDrBoard post = adminAskDrServiceImpl.getPostDetail(adNo);
		
		mv.addObject("post", post);
		mv.addObject("pageNo", pageNo);
		mv.setViewName("admin/askDr/askDrDetail");
		return mv;
	}
	
	@RequestMapping(value="deleteAdminAskDrPost.do", method=RequestMethod.POST)
	public String deletePost(AdminAskDrBoard post) {
		List<String> fileNames = adminAskDrServiceImpl.getFileNames(post.getAdNo());
		
		if( deleteStoredImgs(fileNames) ){
			adminAskDrServiceImpl.deletePost(post.getAdNo());
		}
		
		return "redirect:askDrManage.do?pageNo=1";
	}
	
	public boolean deleteStoredImgs(List<String> fileNames) {
		for(String fileName : fileNames) {
			String path = "C:\\lanCableDoctorProject\\files\\" + fileName;
			
			try{
				File file = new File(path);
				if( file.exists() ) {
					file.delete();
				}
			}
			catch(Exception e) {
				e.printStackTrace();
				return false;
			}			
		}
		return true;
	}
	
	@ResponseBody
	@RequestMapping(value="deleteAdminAskDrReply.do", method=RequestMethod.POST)
	public String deleteReply(@RequestParam int adrNo) {
		int result = adminAskDrServiceImpl.deleteReply(adrNo);
		
		if(result > 0) {
			return "success";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping(value="getReplyList.do", method=RequestMethod.GET)
	public void getReplyList(@RequestParam int adNo,
														HttpServletResponse response) throws JsonIOException, IOException{
		List<AskDrReply> replyList = adminAskDrServiceImpl.getReplyList(adNo);
		
		response.setContentType("application/json;charset=utf-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(replyList, response.getWriter());
	}
	
	@RequestMapping(value="adminAskDrSearch.do", method=RequestMethod.GET)
	public ModelAndView search(@RequestParam String condition,
											@RequestParam String keyword,
											@RequestParam int pageNo,
											ModelAndView mv) {
		int searchNo = 0;
		int searchCount = 0;
		PageInfo pageInfo = null;
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("condition", condition.replaceAll("\\p{Z}", ""));
		
		if(condition.equals("adNo")) { 
			searchNo = Integer.valueOf(keyword);
			param.put("keyword", searchNo);
			searchCount = 1;
		}
		else {
			param.put("keyword", keyword);
			searchCount = adminAskDrServiceImpl.searchCount(param);
		}
		pageInfo = Pagination.getPageInfo(pageNo, searchCount);
		
		List<AdminAskDrBoard> boardList = adminAskDrServiceImpl.search(param, pageInfo);	
		
		mv.addObject("boardList", boardList);
		mv.addObject("pageInfo", pageInfo);
		mv.addObject("condition", condition);
		mv.addObject("keyword", keyword);
		mv.addObject("type", 2);
		mv.setViewName("admin/askDr/askDrManage");
		return mv;
	}
}





















