package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxTestController {
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/test/ajaxtest1", method = RequestMethod.GET)
	public ResponseEntity<String> idcheck(HttpServletRequest request) {
		String result="";
		String id=request.getParameter("id");
		
		MemberDTO memberDTO=memberService.getMember(id);
		if(memberDTO!=null) {
			result="iddup"; //아이디 중복
		}else {
			result="idok"; //아이디 사용가능
		}
				
		ResponseEntity<String> entity=new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/test/ajaxtest2", method = RequestMethod.GET)
	public ResponseEntity<String> emailcheck(HttpServletRequest request) {
		String result="";
		String email=request.getParameter("email");
		
		MemberDTO memberDTO=memberService.getMemberEmail(email);
		if(memberDTO!=null) {
			result="emaildup"; //이메일 중복
		}else {
			result="emailok"; //이메일 사용가능
		}
				
		ResponseEntity<String> entity=new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/test/ajaxtest3", method = RequestMethod.GET)
	public ResponseEntity<List<MemberDTO>> list(HttpServletRequest request) {
		
		List<MemberDTO> memberList=memberService.getMemberList();
				
		ResponseEntity<List<MemberDTO>> entity=new ResponseEntity<List<MemberDTO>>(memberList,HttpStatus.OK);
		return entity;
	}
	
	
}

