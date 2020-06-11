package Controller.Manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;

public class userAllSelect {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDAO dao = new MemberDAO();
		List list = dao.userAllSelect();
		Integer count = dao.userCount();
		request.setAttribute("userList", list);
		request.setAttribute("count", count);
	}

}
