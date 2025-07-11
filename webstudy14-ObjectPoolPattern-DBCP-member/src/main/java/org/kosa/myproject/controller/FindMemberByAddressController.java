package org.kosa.myproject.controller;

import java.util.ArrayList;

import org.kosa.myproject.model.MemberDao;
import org.kosa.myproject.model.MemberVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FindMemberByAddressController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address = request.getParameter("address");
		ArrayList<MemberVo> list = MemberDao.getInstance().findMemberByAddress(address);
		String path = null;
		if(list.isEmpty()) {
			path = "findbyaddress-fail.jsp";			
		}else {
			path = "findbyaddress-ok.jsp";
			request.setAttribute("list", list);			
		}
		return path;
	}

}
