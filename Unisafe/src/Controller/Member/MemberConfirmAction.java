package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;

public class MemberConfirmAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("userId");
		MemberDAO dao = new MemberDAO();
		String confirmId = dao.selectId(userId);
		
		if(confirmId == null) {
			request.setAttribute("chkId", "사용가능한 ID입니다.");
			request.setAttribute("num", 2);
		} else {
			request.setAttribute("chkId", "중복된 ID입니다.");
			request.setAttribute("num", 1);
		}
		System.out.println(userId);
		request.setAttribute("userId", userId);
	}

}
