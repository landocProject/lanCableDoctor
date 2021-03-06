package com.kh.landocProject.hospital.model.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;



public class MainHp implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8722540332219462132L;

	private int rowNum;
	
	// 병원 테이블 변수
	private int hpNo;
	private String hpName;
	private String hpPhone;
	private String hpPostCode;
	private String hpAddress;
	private String hpx;
	private String hpy;
	private double hpAvgRate;
	private int hpReCount;
	private String hpComment;
	private String hpStatus;
	
	// 병원리스트 테이블 변수
	private int hpCateCode;
	
	// 병원 진료과목 테이블 변수
	private String hpCateName;
	
	// 의사/병원 정보 사진 테이블 변수
	private int drHpNo;
	private int phCode;	// 사진 유형 코드
	private String originFileName;
	private String renameFileName;
	private String filePath;
	
	
	// 영업시간 테이블 변수
	private String hpDay;
	private String hpOpenTime;
	private String hpCloseTime;
	
	private List<MultipartFile> file;
	
	public MainHp() {
	}

	public MainHp(int rowNum, int hpNo, String hpName, String hpPhone, String hpPostCode, String hpAddress, String hpx,
			String hpy, double hpAvgRate, int hpReCount, String hpComment, String hpStatus, int hpCateCode,
			String hpCateName, int drHpNo, int phCode, String originFileName, String renameFileName, String filePath,
			String hpDay, String hpOpenTime, String hpCloseTime, List<MultipartFile> file) {
		this.rowNum = rowNum;
		this.hpNo = hpNo;
		this.hpName = hpName;
		this.hpPhone = hpPhone;
		this.hpPostCode = hpPostCode;
		this.hpAddress = hpAddress;
		this.hpx = hpx;
		this.hpy = hpy;
		this.hpAvgRate = hpAvgRate;
		this.hpReCount = hpReCount;
		this.hpComment = hpComment;
		this.hpStatus = hpStatus;
		this.hpCateCode = hpCateCode;
		this.hpCateName = hpCateName;
		this.drHpNo = drHpNo;
		this.phCode = phCode;
		this.originFileName = originFileName;
		this.renameFileName = renameFileName;
		this.filePath = filePath;
		this.hpDay = hpDay;
		this.hpOpenTime = hpOpenTime;
		this.hpCloseTime = hpCloseTime;
		this.file = file;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public int getHpNo() {
		return hpNo;
	}

	public void setHpNo(int hpNo) {
		this.hpNo = hpNo;
	}

	public String getHpName() {
		return hpName;
	}

	public void setHpName(String hpName) {
		this.hpName = hpName;
	}

	public String getHpPhone() {
		return hpPhone;
	}

	public void setHpPhone(String hpPhone) {
		this.hpPhone = hpPhone;
	}

	public String getHpPostCode() {
		return hpPostCode;
	}

	public void setHpPostCode(String hpPostCode) {
		this.hpPostCode = hpPostCode;
	}

	public String getHpAddress() {
		return hpAddress;
	}

	public void setHpAddress(String hpAddress) {
		this.hpAddress = hpAddress;
	}

	public String getHpx() {
		return hpx;
	}

	public void setHpx(String hpx) {
		this.hpx = hpx;
	}

	public String getHpy() {
		return hpy;
	}

	public void setHpy(String hpy) {
		this.hpy = hpy;
	}

	public double getHpAvgRate() {
		return hpAvgRate;
	}

	public void setHpAvgRate(double hpAvgRate) {
		this.hpAvgRate = hpAvgRate;
	}

	public int getHpReCount() {
		return hpReCount;
	}

	public void setHpReCount(int hpReCount) {
		this.hpReCount = hpReCount;
	}

	public String getHpComment() {
		return hpComment;
	}

	public void setHpComment(String hpComment) {
		this.hpComment = hpComment;
	}

	public String getHpStatus() {
		return hpStatus;
	}

	public void setHpStatus(String hpStatus) {
		this.hpStatus = hpStatus;
	}

	public int getHpCateCode() {
		return hpCateCode;
	}

	public void setHpCateCode(int hpCateCode) {
		this.hpCateCode = hpCateCode;
	}

	public String getHpCateName() {
		return hpCateName;
	}

	public void setHpCateName(String hpCateName) {
		this.hpCateName = hpCateName;
	}

	public int getDrHpNo() {
		return drHpNo;
	}

	public void setDrHpNo(int drHpNo) {
		this.drHpNo = drHpNo;
	}

	public int getPhCode() {
		return phCode;
	}

	public void setPhCode(int phCode) {
		this.phCode = phCode;
	}

	public String getOriginFileName() {
		return originFileName;
	}

	public void setOriginFileName(String originFileName) {
		this.originFileName = originFileName;
	}

	public String getRenameFileName() {
		return renameFileName;
	}

	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getHpDay() {
		return hpDay;
	}

	public void setHpDay(String hpDay) {
		this.hpDay = hpDay;
	}

	public String getHpOpenTime() {
		return hpOpenTime;
	}

	public void setHpOpenTime(String hpOpenTime) {
		this.hpOpenTime = hpOpenTime;
	}

	public String getHpCloseTime() {
		return hpCloseTime;
	}

	public void setHpCloseTime(String hpCloseTime) {
		this.hpCloseTime = hpCloseTime;
	}

	public List<MultipartFile> getFile() {
		return file;
	}

	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MainHp [rowNum=" + rowNum + ", hpNo=" + hpNo + ", hpName=" + hpName + ", hpPhone=" + hpPhone
				+ ", hpPostCode=" + hpPostCode + ", hpAddress=" + hpAddress + ", hpx=" + hpx + ", hpy=" + hpy
				+ ", hpAvgRate=" + hpAvgRate + ", hpReCount=" + hpReCount + ", hpComment=" + hpComment + ", hpStatus="
				+ hpStatus + ", hpCateCode=" + hpCateCode + ", hpCateName=" + hpCateName + ", drHpNo=" + drHpNo
				+ ", phCode=" + phCode + ", originFileName=" + originFileName + ", renameFileName=" + renameFileName
				+ ", filePath=" + filePath + ", hpDay=" + hpDay + ", hpOpenTime=" + hpOpenTime + ", hpCloseTime="
				+ hpCloseTime + ", file=" + file + "]";
	}
	
	
	
	
}
