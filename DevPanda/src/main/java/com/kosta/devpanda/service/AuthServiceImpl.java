package com.kosta.devpanda.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.devpanda.dao.PersonDao;
import com.kosta.devpanda.dto.Person;

@Service
public class AuthServiceImpl implements AuthService {
	
	@Autowired
	private PersonDao personDao;

	@Override
	public Person personLogin(Person person) throws Exception {
		
		if(person.getId() == null || person.getPassword() == null ) {
			return null;
		}else {
			return personDao.findPersonByIdAndPassword(person);
		}
		
}


}
