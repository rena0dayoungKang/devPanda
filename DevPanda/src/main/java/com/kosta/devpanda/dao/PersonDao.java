package com.kosta.devpanda.dao;

import java.util.Map;

import com.kosta.devpanda.dto.Person;

public interface PersonDao {
	Person findPersonByIdAndPassword(Person person);
}
