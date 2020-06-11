package Controller.SafeMall;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.DAO.SafeReviewDAO;

public class reviewListAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		int page = 1;
		if(request.getParameter("page") != null)
		{
			page = Integer.parseInt(request.getParameter("page"));
		}
		int limit = 10;
		int limitPage = 5;
		List list = new ArrayList();
		SafeReviewDAO dao = new SafeReviewDAO();
		
		list = dao.reviewAllSelect(page,limit);
		
		Integer count = dao.reviewCount();
		
		int maxPage = (int)((double)count / limit +0.95);
		int startPage = (int)(((double)page / limitPage + 0.95)-1)* limitPage + 1; 
		int endPage = startPage + limitPage -1;
		if(endPage > maxPage)
		{
			endPage = maxPage;
		}
		request.setAttribute("maxPage",maxPage);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage",endPage);
		request.setAttribute("page",page);
		
		request.setAttribute("reviews",list);
		request.setAttribute("reviewCount",count);
		
		
	}

}
