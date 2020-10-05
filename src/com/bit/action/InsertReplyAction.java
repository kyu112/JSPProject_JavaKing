package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.dao.ReplyDao;
import com.bit.vo.ReplyVo;

public class InsertReplyAction implements BitAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		ReplyDao dao = new ReplyDao();
		
		int reply_no = dao.getNextReplyNo();
		String reply_content = request.getParameter("reply_content");
		String std_no_fake = (String)session.getAttribute("std_no");
		int std_no = Integer.parseInt(std_no_fake);
		int board_no =Integer.parseInt(request.getParameter("board_no"));
		//----------------------------------------------------------------------------------------------		
		ReplyVo r_vo = new ReplyVo();
		
		r_vo.setReply_no(reply_no);
		r_vo.setReply_content(reply_content);
		r_vo.setStd_no(std_no);
		r_vo.setBoard_no(board_no);
		//----------------------------------------------------------------------------------------------
		dao.insertReply(r_vo);
		
		request.setAttribute("board_no", board_no);
		return "detailBoard.do";
	}

}
