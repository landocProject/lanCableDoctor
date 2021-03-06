package com.kh.landocProject.payment.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.landocProject.payment.model.vo.Cart;

import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.OrderMg;
import com.kh.landocProject.payment.model.vo.OrderProduct;
import com.kh.landocProject.payment.model.vo.PayProduct;
import com.kh.landocProject.payment.model.vo.Payment;


@Repository("payDao")
public class PaymentDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;


	public ArrayList<Cart> selectCartList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("payMapper.selectCartList",cNo);
	}

	public MemberPay loginClient3(String cNo) {
		
		return sqlSessionTemplate.selectOne("payMapper.loginClient3", cNo);
	}

	public PayProduct selectPro(int pdNo) {
	
		return sqlSessionTemplate.selectOne("payMapper.selectPro", pdNo);
	}

	public MemberPay loginDrClient3(String drNo) {
		
		return sqlSessionTemplate.selectOne("payMapper.loginDrClient3", drNo);
	}

	public int insertPayment(Payment p) {

		return sqlSessionTemplate.insert("payMapper.insertPayment", p);
	}

	public int insertPayment1(Payment p) {
		
		return sqlSessionTemplate.insert("payMapper.insertPayment1", p);
	}

	public int insertOrderMg(OrderMg or) {
	
		return sqlSessionTemplate.insert("payMapper.insertOrderMg", or);
	}

	public int insertOrderPro(OrderProduct op) {
		
		return sqlSessionTemplate.insert("payMapper.insertOrderPro", op);
	}

	public int updateC(Payment p) {
	
		return sqlSessionTemplate.update("payMapper.updateC",p);
	}

	public int updateDr(Payment p) {
	
		return sqlSessionTemplate.update("payMapper.updateDr",p);
	}

	public int cartInsert(HashMap<String, Object> cart) {
		
		return sqlSessionTemplate.insert("payMapper.cartInsert",cart);
	}

	public int cartUpdate(HashMap<String, Object> cart) {
	
		return sqlSessionTemplate.update("payMapper.cartUpdate",cart);
	}


	public int deleteCart(int cartNo) {
		
		return sqlSessionTemplate.delete("payMapper.deleteCart",cartNo);
	}


	public int selectOrderNo() {
		
		return sqlSessionTemplate.selectOne("payMapper.selectOrderNo");
	}


	public int cartPaySuccess(List<HashMap<String, Object>> list) {
		
		return sqlSessionTemplate.insert("payMapper.cartPaySuccess", list);
	}

	public int cartPayDelete(List<HashMap<String, Object>> list) {
		
		return sqlSessionTemplate.delete("payMapper.cartDelete", list);
	}

	public int cartPayDeleteD(List<HashMap<String, Object>> list) {
		
		return sqlSessionTemplate.delete("payMapper.cartDeleteD", list);
	}

	public ArrayList<Cart> selectDrCartList(String drNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("payMapper.selectDrCartList",drNo);
	}

	public MemberPay selectC(String cNo) {
		
		return sqlSessionTemplate.selectOne("payMapper.selectC", cNo);
	}

	public MemberPay selectD(String drNo) {

		return sqlSessionTemplate.selectOne("payMapper.selectD", drNo);
	}

	public int selectPayOrderNo() {
		
		return sqlSessionTemplate.selectOne("payMapper.selectPayOrderNo");
	}

	public int insertCartOrderMg(List<HashMap<String, Object>> list) {

		return sqlSessionTemplate.insert("payMapper.insertCartOrderMg", list);
	}


}
