package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;

public class pwModifyAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String path = null;
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("uniId");
		String newPw = request.getParameter("userPw");
		String newPw2 = request.getParameter("userPw2");
		MemberDAO dao = new MemberDAO();
		if(newPw.equals(newPw2)) {
			dao.pwModify(newPw, userId);
			path = "member/myPage.jsp";
		} else {
			path = "member/pwModify.jsp";
		}
		return path;
	}

}
