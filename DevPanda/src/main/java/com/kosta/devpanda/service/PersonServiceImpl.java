package com.kosta.devpanda.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.devpanda.dao.PersonDao;
import com.kosta.devpanda.dto.Person;

@Service
public class PersonServiceImpl implements PersonService {
	
	@Autowired
	private PersonDao personDao;
	
	@Override
	public Person loginPerson(String id, String password) throws Exception {
		Person lperson = personDao.selectPerson(id);
		System.out.println(lperson);
		if(lperson == null) throw new Exception("아이디 오류");
		if(!password.equals(lperson.getPassword())) throw new Exception("패스워드 오류");
		
		return lperson;
	}

}
