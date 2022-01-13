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

	@Override
	public List<Accounting> searchAccPayMent(String acc_payment) throws Exception {
		
		acc_payment  = "%" + acc_payment + "%";
		
		return dao.searchAccPayMent(acc_payment);
	}

	@Override
	public List<Accounting> searchAccWriter(String acc_writer) throws Exception {
		
		acc_writer = "%" + acc_writer + "%";
		
		return dao.searchAccWriter(acc_writer);
	}

	@Override
	public List<Accounting> searchAccDate(String acc_occdate) throws Exception {
		
		acc_occdate = "%" + acc_occdate + "%";
		
		return dao.searchAccDate(acc_occdate);
	}

}
