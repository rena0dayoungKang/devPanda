package com.kosta.devpanda.dao;

import com.kosta.devpanda.dto.Company;

public interface CompanyDao {
	Company selectCompany(String id) throws Exception;

}
