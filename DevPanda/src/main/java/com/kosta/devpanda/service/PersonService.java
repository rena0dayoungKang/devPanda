package com.kosta.devpanda.service;

import com.kosta.devpanda.dto.Person;

public interface PersonService {
	Person loginPerson(String id, String password) throws Exception;
}
