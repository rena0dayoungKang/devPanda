package com.kosta.devpanda.service;

import com.kosta.devpanda.dto.Person;

public interface AuthService {
	Person personLogin (Person person) throws Exception;
}
