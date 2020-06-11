package Controller.SafeMall;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeQnADAO;
import Model.DTO.SafeQnADTO;

public class qnaModifyAction 
{

	public Integer execute(HttpServletRequest request, HttpServletResponse response) 
	{
		try 
		{
			request.setCharacterEncoding("UTF-8");
		} 
		catch (UnsupportedEncodingException e) 
		{
			
			e.printStackTrace();
		}
		SafeQnADTO dto = new SafeQnADTO();
		dto.setUserName(request.getParameter("userName"));
		dto.setQnaSubject(request.getParameter("qnaSubject"));
		dto.setQnaContent(request.getParameter("qnaContent"));
		dto.setQnaPass(request.getParameter("qnaPass"));
		dto.setQnaNum(Integer.parseInt(request.getParameter("qnaNum")));
		Integer result = 0;
		
		SafeQnADAO dao = new SafeQnADAO();
		result = dao.qnaModify(dto);
		
		return result;
		
		
		
	}

}
