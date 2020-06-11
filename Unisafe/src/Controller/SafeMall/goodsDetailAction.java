package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeMallDAO;
import Model.DTO.SafeMallDTO;

public class goodsDetailAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafeMallDAO dao = new SafeMallDAO();
		SafeMallDTO dto = dao.goodsDetailSelect(request.getParameter("num"));
		request.setAttribute("goods", dto);
		
		String stock = dao.stockOneSelect(request.getParameter("num"));
		System.out.println("남은 재고="+stock);
		request.setAttribute("stock",stock);
		
		
		
	}

}
