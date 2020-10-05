package com.bit.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.dao.ClassRegDao;
import com.bit.vo.ClassregVo;

public class DetailClassOkAction implements BitAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse resonse) throws ServletException, IOException {
		ClassRegDao dao = ClassRegDao.getInstance();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		int std_no =Integer.parseInt(request.getParameter("std_no"));
		int year =Integer.parseInt(request.getParameter("year"));
		int semester = Integer.parseInt(request.getParameter("semester"));
		ArrayList<ClassregVo> list = dao.getAtStudentInfo(std_no, year, semester);
		session.setAttribute("list", list);
		return "detailClass.jsp";
	}

}
