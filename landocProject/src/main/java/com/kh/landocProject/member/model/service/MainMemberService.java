package com.kh.landocProject.member.model.service;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;

public interface MainMemberService {

	int joinClient(Client c);

	Client loginClient(Client c);

	DrClient loginDoctor(DrClient d);

	Client searchIdClient(Client c);

	DrClient searchIdDoctor(DrClient d);

	int joinDrClient(DrClient d);
	
	int insertFile1(DrhpPhoto dhp);

	int insertFile2(DrhpPhoto dhp);

	int insertFile3(DrhpPhoto dhp);
	
	DrClient joinDrClient2(DrClient d);

	Client searchPwdClient(Client c);

	DrClient SearchPwdDrClient(DrClient d);

	Client ClientSearchPwd2(Client c);

	DrClient DrClientSearchPwd2(DrClient d);

	Client ClientSearchPwd3(Client c);

	DrClient DrClientSearchPwd3(DrClient d);

	int ClientSearchPwd4(Client c);

	int DrClientSearchPwd4(DrClient d);

}
