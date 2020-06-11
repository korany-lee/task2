package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;

public class blackListAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("userId");
		MemberDAO dao = new MemberDAO();
		dao.addBlackList(userId);
	}

}
