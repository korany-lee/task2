package Controller.Manager;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;

public class managerLoginAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String managerId = request.getParameter("userId");
		String managerPw = request.getParameter("userPw");
		System.out.println("매니저 id 값 : " + managerId);
		System.out.println("매니저 pw 값 : " + managerPw);
		HttpSession session = request.getSession();
		MemberDAO dao = new MemberDAO();
		Integer i = dao.managerLogin(managerId, managerPw);
		System.out.println("매니저 i 값 : " + i);
		if(i == 1) {
			session.setAttribute("managerId", managerId);
		} else if(i == 0) {
			
		} else if(i == -1) {
			
		}
		
	}

}
