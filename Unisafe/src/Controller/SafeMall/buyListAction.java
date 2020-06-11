package Controller.SafeMall;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafeBuyDAO;

public class buyListAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("uniId");
		int page = 1;
		if(request.getParameter("page") != null)
		{
			page = Integer.parseInt(request.getParameter("page"));
		}
		int limit = 10;
		int limitPage = 5;
		List list = new ArrayList();
		SafeBuyDAO dao = new SafeBuyDAO();
		
		 list = dao.buyAllSelect(userId,page,limit);
		 Integer count = dao.buyCount(userId);
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
			
			request.setAttribute("buys", list);
			request.setAttribute("buyCount", count);
			
	}

}
