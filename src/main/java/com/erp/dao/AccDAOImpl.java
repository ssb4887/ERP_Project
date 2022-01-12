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

}
