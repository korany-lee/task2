package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;

public class MemberMailOkAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("num");
		String userEmail = request.getParameter("email");
		MemberDAO dao = new MemberDAO();
		String joinOk = dao.memberJoinOk(userEmail);
		String path = "";
		
		if(joinOk.equals("t")) {
			dao.joinOkUpdate(num, userEmail);
			path = "member/joinOkTrue.jsp";
		} else {
			path = "member/joinOkFalse.jsp";
		}
		return path;
	}

}
