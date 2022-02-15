package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
//		/WEB-INF/views/member/join.jsp  => 이동
		
		return "member/join";
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro(MemberDTO memberDTO) {

		// 리턴할형 없음 insertMember(MemberDTO memberDTO) 메서드 정의
		// 메서드 호출
		memberService.insertMember(memberDTO);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
//		/WEB-INF/views/member/login.jsp  => 이동
		
		return "member/login";
	}
	
	// /member/loginPro
	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberDTO memberDTO, HttpSession session) {

		// 아이디 비밀번호 => 일치여부 확인 => 디비작업 메서드 호출  
		//  리턴할형 MemberDTO   userCheck(memberDTO)메서드
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2!=null) {
			//아이디 비밀번호 일치
			// 세션값 생성
			session.setAttribute("id", memberDTO.getId());
			// 이동
			return "redirect:/member/main";
		}else {
			//null 아이디 비밀번호 틀림
			// 이동
			return "member/msg";
		}
		
	}
	
	// /member/main
	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String main() {
//		/WEB-INF/views/main/main.jsp  => 이동
		
		return "main/main";
	}
	
	// /member/logout
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		//세션값 초기화
		session.invalidate();
//		/WEB-INF/views/main/main.jsp  => 이동
		
		return "main/main";
	}
	
}
