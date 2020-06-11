package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;

public class userModifyProAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("uniId");
		String userPh = request.getParameter("userPh1");
		String userEmail = request.getParameter("userEmail1");
		MemberDAO dao = new MemberDAO();
		dao.userModifyProAction(userId, userPh, userEmail);
	}

}


















