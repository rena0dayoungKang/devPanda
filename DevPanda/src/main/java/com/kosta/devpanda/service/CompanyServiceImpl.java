package com.kosta.devpanda.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.devpanda.dao.CompanyDao;
import com.kosta.devpanda.dto.Company;

@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private CompanyDao companyDao;

	@Override
	public Company loginCompany(String id, String password) throws Exception {
		Company lcompany = companyDao.selectCompany(id);
		System.out.println(lcompany);
		if(lcompany == null) throw new Exception("아이디 오류");
		if(!password.equals(lcompany.getPassword())) throw new Exception("패스워드 오류");
		
		return lcompany;
	}

}
