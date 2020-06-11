package Controller.Manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class userInfoAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.managerSelectUser(userId);
		request.setAttribute("user", dto);
	}

}
