package com.bit.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.dao.ClassRegDao;
import com.bit.vo.ClassregVo;

public class DetailClassAction implements BitAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse resonse) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int std_no =(Integer) session.getAttribute("std_no");
		request.setAttribute("std_no", std_no);
		return "detailClass.jsp";
	}

}
