package com.kosta.devpanda.service;

import com.kosta.devpanda.dto.Company;

public interface CompanyService {
	Company loginCompany(String id, String password) throws Exception;
}
