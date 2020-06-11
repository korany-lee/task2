package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafeBuyDAO;
import Model.DTO.SafeBuyDTO;

public class goodsPayAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		
		HttpSession session = request.getSession();
		String orderNum = (String)session.getAttribute("orderNum");
		SafeBuyDAO dao = new SafeBuyDAO();
		SafeBuyDTO dto = dao.userOneSelect(orderNum);
		request.setAttribute("userInfo",dto);
		
		List list = dao.buyList(orderNum);
		request.setAttribute("buyList",list);
	}

}
