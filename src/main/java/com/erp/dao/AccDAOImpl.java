package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.Accounting;

// user 회계
@Repository
public class AccDAOImpl implements AccDAO {
	
	@Inject
	SqlSession sqlSession;
	
	final String SESSION = "com.erp.mappers.erp";
	
	@Override
	public void addAccAction(Accounting accounting) throws Exception {

		sqlSession.insert(SESSION + ".addAccAction", accounting);
	}

	@Override
	public List<Accounting> getAccList() throws Exception {
		
		return sqlSession.selectList(SESSION + ".getAccList");
	}

	@Override
	public List<Accounting> searchAccPayMent(String acc_payment) throws Exception {
		return sqlSession.selectList(SESSION + ".searchAccPayMent", acc_payment);
	}

	@Override
	public List<Accounting> searchAccWriter(String acc_writer) throws Exception {
		return sqlSession.selectList(SESSION + ".searchAccWriter", acc_writer);
	}

	@Override
	public List<Accounting> searchAccDate(String acc_occdate) throws Exception {
		return sqlSession.selectList(SESSION + ".searchAccDate", acc_occdate);
	}

}
