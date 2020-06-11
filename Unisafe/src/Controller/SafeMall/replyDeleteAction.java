package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeReplyDAO;

public class replyDeleteAction {

	public void execute(HttpServletRequest request, HttpServletResponse response)
	{
		String replyNum = request.getParameter("num");
		SafeReplyDAO dao = new SafeReplyDAO();
		dao.replyDelete(replyNum);
		
	}

	
}
