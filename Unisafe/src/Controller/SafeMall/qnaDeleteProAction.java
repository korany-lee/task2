package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeQnADAO;

public class qnaDeleteProAction 
{

	public Integer execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String qnaNum = request.getParameter("qnaNum");
		String qnaPass = request.getParameter("qnaPass");
		SafeQnADAO dao = new SafeQnADAO();
		Integer result = dao.qnaDelete(qnaNum,qnaPass);
		
		return result;
		
	}

}
