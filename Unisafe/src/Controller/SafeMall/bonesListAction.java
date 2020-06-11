package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeMallDAO;

public class bonesListAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafeMallDAO dao = new SafeMallDAO();
		List list = dao.bonesAllSelect();
		Integer bonesCount = dao.bonesCount();
		request.setAttribute("goods",list);
		request.setAttribute("bonesCount",bonesCount);
		List list1 = dao.stockSelect();
		request.setAttribute("stock", list1);
		
		
	}

}
