package com.bit.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.dao.BoardDao;
import com.bit.dao.ReplyDao;
import com.bit.vo.BoardVo;
import com.bit.vo.ReplyVo;

public class DetailBoardAction implements BitAction {
	
	public BoardDao b_dao;
	public ReplyDao r_dao;
	
	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		b_dao = new BoardDao();
		r_dao = new ReplyDao();
		HttpSession session = request.getSession();
		
		int board_no=Integer.parseInt(request.getParameter("board_no"));
		b_dao.increaseHit(board_no);
		BoardVo b_vo = b_dao.getBoard(board_no);
		
		ArrayList<ReplyVo> r_list = r_dao.listReply(board_no);
		
		//댓글 개수를 반환하는 r_count 유지시키기
		request.setAttribute("reply_count", r_dao.getTotalReply(board_no));
		request.setAttribute("b_vo", b_vo);
		request.setAttribute("r_list", r_list);
		
		return "detailBoard.jsp";
	}
	
}
