package com.erp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.AccDAO;
import com.erp.vo.Accounting;

// user 회계
@Service
public class AccServiceImpl implements AccService {


	@Inject
	AccDAO dao;
	
	@Override
	public void addAccAction(Accounting accounting) throws Exception {
		dao.addAccAction(accounting);
	}

	@Override
	public List<Accounting> getAccList() throws Exception {
		return dao.getAccList();
	}

}
