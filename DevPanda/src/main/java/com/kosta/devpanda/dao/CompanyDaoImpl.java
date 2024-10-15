package com.kosta.devpanda.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.devpanda.dto.Company;

@Repository
public class CompanyDaoImpl implements CompanyDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Company selectCompany(String id) throws Exception {
		return sqlSession.selectOne("mapper.company.selectCompany", id);
	}

}
