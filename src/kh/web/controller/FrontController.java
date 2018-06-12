package kh.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.web.dao.PersonDAO;
import kh.web.dto.PersonDTO;


@WebServlet("*.do")
public class FrontController extends HttpServlet {




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isRedirect=true;
		String dst = null;
		
		try {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());

			

			if(command.equals("/input.do")) {
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");

				PersonDAO dao = new PersonDAO();
				int result = dao.insertData(name, phone, email);

				request.setAttribute("result", result);

				
				isRedirect=false;
				dst = "signupview.jsp";

			}else if(command.equals("/output.do")) {
				PersonDAO dao = new PersonDAO();
				List<PersonDTO> list = new ArrayList<>();
				list = dao.getAllData();
				
				request.setAttribute("person", list);
				
				isRedirect=false;
				dst = "output.jsp";
			}
			
			
			
		}
		
			
		
		catch(Exception e) {

		}
		
		if(isRedirect) {
			response.sendRedirect(dst);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher(dst);
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
