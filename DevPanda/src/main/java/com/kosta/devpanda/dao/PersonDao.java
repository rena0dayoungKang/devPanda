package com.kosta.devpanda.dao;

import com.kosta.devpanda.dto.Person;

public interface PersonDao {
	Person selectPerson(String id) throws Exception;
}
