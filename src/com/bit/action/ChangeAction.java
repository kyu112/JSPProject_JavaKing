package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.BitDao;
import com.bit.vo.ChangeVo;

public class ChangeAction implements BitAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int std_no = (Integer) request.getSession().getAttribute("login");
		BitDao dao = new BitDao();
		ChangeVo vo = dao.getChange(std_no);
		request.setAttribute("change", vo);
		String view = "change.jsp";
		return view;
	}

}
