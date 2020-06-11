package Controller.SafeMall;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeMallDAO;

public class jerkyListAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafeMallDAO dao = new SafeMallDAO();
		List list = dao.jerkyAllSelect();
		Integer jerkyCount = dao.jerkyCount();
		request.setAttribute("goods", list);
		request.setAttribute("jerkyCount",jerkyCount);
		List list1 = dao.stockSelect();
		request.setAttribute("stock", list1);
	}

}
