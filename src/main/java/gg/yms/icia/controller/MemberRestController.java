package gg.yms.icia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import gg.yms.icia.bean.BbReply;
import gg.yms.icia.bean.Board;
import gg.yms.icia.bean.Member;
import gg.yms.icia.bean.Tsb_Board;
import gg.yms.icia.service.MemberMM;

@RestController
public class MemberRestController {

	
	@Autowired
	private MemberMM MM;
	
	ModelAndView mav;
	
	@PostMapping(value="/amMemberDelete")
	public List<Member> amMemberDelete(String m_id) {
		List<Member> MemberDeleteList = MM.amMemberDelete(m_id);
		return MemberDeleteList;
	}
	
	@PostMapping(value="/amBbDelete")
	public List<Board> amBbDelete(Integer postNum , Integer pageNum) {
		System.out.println("delete 컨트롤러" + postNum);
		List<Board> amBbList = MM.amBbDelete(postNum , pageNum);
		return amBbList;
	}
	
	@PostMapping(value="/amTsbDelete")
	public List<Tsb_Board> amTsbDelete(Integer postNum , Integer pageNum) {
		List<Tsb_Board> amTsbList = MM.amTsbDelete(postNum , pageNum);
		return amTsbList;
	}
	

}
