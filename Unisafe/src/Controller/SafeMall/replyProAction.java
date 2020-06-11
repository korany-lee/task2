package Controller.SafeMall;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafeReplyDAO;
import Model.DTO.SafeReplyDTO;

public class replyProAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		try 
		{
			request.setCharacterEncoding("UTF-8");
		} 
		catch (UnsupportedEncodingException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SafeReplyDTO dto = new SafeReplyDTO();
		HttpSession session = request.getSession();
		
		dto.setUserId((String)session.getAttribute("uniId"));
		dto.setQnaNum(Integer.parseInt(request.getParameter("qnaNum")));
		dto.setReplySubject(request.getParameter("replySubject"));
		dto.setReplyContent(request.getParameter("replyContent"));
		dto.setUserName(request.getParameter("userName"));
		
		SafeReplyDAO dao = new SafeReplyDAO();
		dao.insertReply(dto);
		
		
		
		
		
	}

}
