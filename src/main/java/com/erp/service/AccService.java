package com.erp.service;

import java.util.List;

import com.erp.vo.Accounting;

// user 회계
public interface AccService {
	public void addAccAction(Accounting accounting) throws Exception;
	
	public List<Accounting> getAccList() throws Exception;
}
