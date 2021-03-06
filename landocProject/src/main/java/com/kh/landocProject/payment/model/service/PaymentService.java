package com.kh.landocProject.payment.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.landocProject.payment.model.vo.Cart;
import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.OrderMg;
import com.kh.landocProject.payment.model.vo.OrderProduct;
import com.kh.landocProject.payment.model.vo.PayProduct;
import com.kh.landocProject.payment.model.vo.Payment;


public interface PaymentService {


	ArrayList<Cart> selectCartList(String cNo);

	MemberPay loginClient3(String cNo);

	PayProduct selectPro(int pdNo);

	MemberPay loginDrClient3(String drNo);

	int insertPayment(Payment p);

	int insertPayment1(Payment p);

	int insertOrderMg(OrderMg or);

	int insertOrderPro(OrderProduct op);

	int updateC(Payment p);

	int updateDr(Payment p);

	int cartInsert(HashMap<String, Object> cart);

	int cartUpdate(HashMap<String, Object> cart);


	int deleteCart(int cartNo);

	int selectOrderNo();

	int cartPaySuccess(List<HashMap<String, Object>> list);

	int deleteC(List<HashMap<String, Object>> list);

	int deleteD(List<HashMap<String, Object>> list);

	ArrayList<Cart> selectDrCartList(String drNo);

	MemberPay selectC(String cNo);

	MemberPay selectD(String drNo);

	int selectPayOrderNo();

	int insertCartOrderMg(List<HashMap<String, Object>> list);

	


}
