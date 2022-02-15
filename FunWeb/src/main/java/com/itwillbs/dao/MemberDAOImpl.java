package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.MemberMapper";

	@Override
	public void insertMember(MemberDTO memberDTO) {
		sqlSession.insert(namespace+".insertMember", memberDTO);
	}

	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
		return sqlSession.selectOne(namespace+".userCheck", memberDTO);
	}
	
	
}
