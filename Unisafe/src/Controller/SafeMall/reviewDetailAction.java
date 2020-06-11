package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeReviewDAO;
import Model.DTO.SafeReviewDTO;

public class reviewDetailAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafeReviewDAO dao = new SafeReviewDAO();
		dao.reviewCountUpdate(request.getParameter("num"));
		
		SafeReviewDTO dto = dao.reviewOneSelect(request.getParameter("num"));
		
		request.setAttribute("reviews",dto);
		
	}

}
