package Controller.SafeMall;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeQnADAO;
import Model.DAO.SafeReplyDAO;
import Model.DTO.SafeQnADTO;

public class qnaDetailAction {

	public void execute(HttpServletRequest request, HttpServletResponse response)
	{
		SafeQnADAO dao = new SafeQnADAO();
		SafeQnADTO dto = dao.qnaOneSelect(request.getParameter("num"));
		request.setAttribute("qna",dto);
		
		List list = new ArrayList();
		String qnaNum = request.getParameter("num");
		System.out.println(qnaNum);
		
		SafeReplyDAO dao1 = new SafeReplyDAO();
		list = dao1.replyOneSelect(qnaNum);
		request.setAttribute("reply", list);
		
		
		
	}

}
