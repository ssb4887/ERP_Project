package com.erp.service;

import java.util.List;

import com.erp.vo.Accounting;

// user 회계
public interface AccService {
	public void addAccAction(Accounting accounting) throws Exception;
	
	public List<Accounting> getAccList() throws Exception;
	
	public List<Accounting> searchAccPayMent(String acc_payment) throws Exception;
	
	public List<Accounting> searchAccWriter(String acc_writer) throws Exception;
	
	public List<Accounting> searchAccDate(String acc_occdate) throws Exception;
}
