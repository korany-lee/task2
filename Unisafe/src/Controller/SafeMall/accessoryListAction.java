package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeMallDAO;

public class accessoryListAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafeMallDAO dao = new SafeMallDAO();
		List list = dao.accessoryAllSelect();
		Integer accessoryCount = dao.accessoryCount();
		request.setAttribute("goods", list);
		request.setAttribute("accessoryCount",accessoryCount);
		List list1 = dao.stockSelect();
		request.setAttribute("stock", list1);
		
	}

}
