package Controller.SafeMall;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeReplyDAO;
import Model.DTO.SafeReplyDTO;

public class replyModifyAction 
{

	public Integer execute(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SafeReplyDTO dto = new SafeReplyDTO();
		
		dto.setReplyNum(Integer.parseInt(request.getParameter("replyNum")));
		dto.setUserName(request.getParameter("userName"));
		dto.setReplySubject(request.getParameter("replySubject"));
		dto.setReplyContent(request.getParameter("replyContent"));
		
		Integer result = Integer.parseInt(request.getParameter("replyNum"));
		
		SafeReplyDAO dao = new SafeReplyDAO();
		dao.replyModify(dto);
		
		return result;
	}

}
