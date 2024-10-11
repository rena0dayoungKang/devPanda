package com.kosta.devpanda.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.devpanda.dto.Person;

@Repository
public class PersonDaoImpl implements PersonDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public Person findPersonByIdAndPassword(Person person) {
		
		return sqlSession.selectOne("mapper.PersonMapper.findPersonByIdAndPassword",person);
	}
	
	
}
