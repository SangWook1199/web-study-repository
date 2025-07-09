package org.kosa.myproject.controller;

import org.kosa.myproject.model.CustomerVo;
import org.kosa.myproject.model.MockDao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterCustomerController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String path = null;
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		CustomerVo vo = new CustomerVo(id,name,address);
		MockDao.getInstance().registerCustomer(vo);
		path = "register-result.jsp";
		return path;
	}

}
