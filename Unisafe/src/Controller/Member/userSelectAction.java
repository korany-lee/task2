package Controller.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class userSelectAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("uniId");
		request.setAttribute("userId", userId);
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.memberOneSelect(userId);
		request.setAttribute("member", dto);
	}

}










