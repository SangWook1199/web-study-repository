package org.kosa.myproject.controller;

import org.kosa.myproject.model.MockDao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteCustomerController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MockDao.getInstance().deleteCustomer(request.getParameter("id"));
		String path = "redirect: delete-result.jsp";
		return path;
	}

}
