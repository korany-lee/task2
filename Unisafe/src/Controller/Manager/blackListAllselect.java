package Controller.Manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;

public class blackListAllselect {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDAO dao = new MemberDAO();
		List list = dao.blackListAllSelect();
		request.setAttribute("black", list);
		Integer count = dao.blackListCount();
		request.setAttribute("count", count);
	}

}
