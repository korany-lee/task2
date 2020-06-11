package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeReplyDAO;
import Model.DTO.SafeReplyDTO;

public class replyDetailAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response)
	{
		
		SafeReplyDAO dao = new SafeReplyDAO();
		SafeReplyDTO dto = dao.replyDetailSelect(request.getParameter("num"));
		request.setAttribute("reply", dto);
		System.out.println("num = "+request.getParameter("num"));
		System.out.println(dto);
	}

}
