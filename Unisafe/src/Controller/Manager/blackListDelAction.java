package Controller.Manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;

public class blackListDelAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("id");
		System.out.println("userId : " + userId);
		MemberDAO dao = new MemberDAO();
		dao.blackListDel(userId);
	}

}
