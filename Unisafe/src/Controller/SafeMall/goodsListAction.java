package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeMallDAO;

public class goodsListAction
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafeMallDAO dao = new SafeMallDAO();
		List list = dao.goodsAllSelect();
		request.setAttribute("goods",list);		
		List list1 = dao.stockSelect();
		request.setAttribute("stock", list1);
		
		
		
	}

}
