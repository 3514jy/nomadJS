package com.itwillbs.service;

import com.itwillbs.domain.MemberDTO;

public interface MemberService {

	// 리턴할형 없음 insertMember(MemberDTO memberDTO) 메서드 정의
	public void insertMember(MemberDTO memberDTO);
	
//  리턴할형 MemberDTO   userCheck(memberDTO)메서드
	public MemberDTO userCheck(MemberDTO memberDTO);
}
