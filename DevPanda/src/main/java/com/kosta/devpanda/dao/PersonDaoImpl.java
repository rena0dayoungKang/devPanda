package com.kosta.devpanda.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.devpanda.dto.Person;

@Repository
public class PersonDaoImpl implements PersonDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Person selectPerson(String id) throws Exception {
		return sqlSession.selectOne("mapper.person.selectPerson", id);
	}
	
	
	

}
