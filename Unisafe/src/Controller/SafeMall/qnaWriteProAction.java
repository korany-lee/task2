package Controller.SafeMall;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafeQnADAO;
import Model.DTO.SafeQnADTO;

public class qnaWriteProAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SafeQnADTO dto = new SafeQnADTO();
		HttpSession session = request.getSession();
		dto.setUserId((String)session.getAttribute("uniId"));
		dto.setUserName(request.getParameter("userName"));
		dto.setQnaPass(request.getParameter("qnaPass"));
		dto.setQnaSubject(request.getParameter("qnaSubject"));
		dto.setQnaContent(request.getParameter("qnaContent"));
		SafeQnADAO dao = new SafeQnADAO();
		dao.insertQnA(dto);
	}

}
