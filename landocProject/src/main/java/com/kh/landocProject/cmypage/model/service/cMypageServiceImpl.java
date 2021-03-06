package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.cmypage.model.dao.cMypageDao;
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePoint;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PdReview;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.product.model.vo.ProductQna;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;


@Service("cmService")
public class cMypageServiceImpl implements cMypageService {

	@Autowired
	cMypageDao cmDao;

	@Override
	public ArrayList<LikeHp> selectList(String cNo) {

		return cmDao.selectList(cNo);
	}

	@Override
	public int selectCount(String cNo) {

		return cmDao.selectCount(cNo);
	}

	@Override
	public ArrayList<PdReview> selectPdReviewList(String cNo, CMypagePageInfo pi) {

		return cmDao.selectPdReviewList(cNo, pi);
	}

	@Override
	public ArrayList<OrderList> selectOrderList(String cNo, CMypagePageInfo pi) {

		return cmDao.selectOrderList(cNo, pi);
	}

	@Override
	public OrderList selectOrderDetail(OrderList order) {

		return cmDao.selectOrderDetail(order);
	}

	@Override
	public ArrayList<OrderList> orderListDateSearch(OrderList order, CMypagePageInfo pi) {

		return cmDao.orderListDateSearch(order, pi);
	}

	@Override
	public ArrayList<OrderList> orderListDateSearch2(OrderList order, CMypagePageInfo pi) {

		return cmDao.orderListDateSearch2(order, pi);
	}

	@Override
	public int pdReviewInsert(PdReview review) {

		return cmDao.pdReviewInsert(review);
	}

	@Override
	public int updateOrderStatus(PdReview review) {

		return cmDao.updateOrderStatus(review);
	}

	@Override
	public ArrayList<OrderQna> orderQnaListY(String cNo, CMypagePageInfo pi) {

		return cmDao.orderQnaListY(cNo, pi);
	}

	@Override
	public ArrayList<OrderQna> orderQnaListN(String cNo) {

		return cmDao.orderQnaListN(cNo);
	}

	@Override
	public ArrayList<OrderList> orderCancelList(String cNo, CMypagePageInfo pi) {

		return cmDao.orderCancelList(cNo, pi);
	}

	@Override
	public int orderQnaInsert(OrderQna qna) {

		return cmDao.orderQnaInsert(qna);
	}

	
	// 리뷰 수
	@Override
	public int getListCountReview(String cNo) {

		return cmDao.getListCountReview(cNo);
	}

	@Override
	public int getListCountOrderList(HashMap<String,Object> order) {
		
		return cmDao.getListCountOrderList(order);
	}

	@Override
	public int getListCountOrderQna(String cNo) {
		
		return cmDao.getListCountOrderQna(cNo);
	}

	@Override
	public PdReview updateReview(PdReview review) {
		
		return cmDao.updateReview(review);
	}

	@Override
	public int updateReviewInsert(PdReview review) {
	
		return cmDao.updateReviewInsert(review);
	}

	@Override
	public String selectAllSumPoint(String cNo) {
		
		return cmDao.selectAllSumPoint(cNo);
	}

	@Override
	public String selectMonthSumPoint(String cNo) {
		
		return cmDao.selectMonthSumPoint(cNo);
	}

	@Override
	public String selectNowMonthPoint() {
		
		return cmDao.selectNowMonthPoint();
	}

	@Override
	public String selectCPoint(String cNo) {
	
		return cmDao.selectCPoint(cNo);
	}

	@Override
	public ArrayList<CMypagePoint> selectPointList(String cNo) {
		
		return cmDao.selectPointList(cNo);
	}

	@Override
	public int listCountPointList(String cNo) {
		
		return cmDao.listCountPointList(cNo);
	}

	@Override
	public int orderCancel(OrderList order) {
		
		return cmDao.orderCancel(order);
	}

	@Override
	public String selectPdReviewPhoto(PdReview review) {
		
		return cmDao.selectPdReviewPhoto(review);
	}

	@Override
	public int getListCountSearchOrderList(HashMap<String, Object> search) {
		
		return cmDao.getListCountSearchOrderList(search);
	}

	@Override
	public int getListCountSearchOrderList2(HashMap<String, Object> search) {
		
		return cmDao.getListCountSearchOrderList2(search);
	}

	@Override

	public Client selectC(String cNo) {
		
		return cmDao.selectC(cNo);
	}

	@Override
	public ArrayList<LikeHp> selectHpAvgList(String cNo) {
		
		return cmDao.selectHpAvgList(cNo);
	}

	@Override
	public int getMyChooseCount(String cNo) {
		return cmDao.getMyChooseCount(cNo);
	}


	@Override
	public int getMyNonChooseCount(String cNo) {
		return cmDao.getMyNonChooseCount(cNo);
	}

	@Override
	public List<AskDrBoard> getChooseList(String cNo, CMypagePageInfo choosePi) {
		return cmDao.getChooseList(cNo, choosePi);
	}

	@Override
	public List<AskDrBoard> getNonChooseList(String cNo, CMypagePageInfo nonChoosePi) {
		return cmDao.getNonChooseList(cNo, nonChoosePi);
	}

	@Override
	public int getHpReCount(String cNo) {
		
		return cmDao.getHpReCount(cNo);
	}

	@Override
	public ArrayList<HpReview> getMyHpReList(String cNo, CMypagePageInfo pi) {
		
		return cmDao.getMyHpReList(cNo,pi);
	}

	@Override
	public int getProductQnaAnswerCount(HashMap<String, String> param) {
		return cmDao.getProductQnaAnswerCount(param);
	}

	@Override
	public int getProductQnaNonAnswerCount(HashMap<String, String> param) {
		return cmDao.getProductQnaNonAnswerCount(param);
	}

	@Override
	public List<ProductQna> getAnswerProductQnaList(HashMap<String, String> param, CMypagePageInfo answerPi) {
		return cmDao.getAnswerProductQnaList(param, answerPi);
	}

	@Override
	public List<ProductQna> getNonAnswerProductQnaList(HashMap<String, String> param, CMypagePageInfo nonAnswerPi) {
		return cmDao.getNonAnswerProductQnaList(param, nonAnswerPi);
	}
	
}

