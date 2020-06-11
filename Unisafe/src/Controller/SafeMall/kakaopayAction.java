package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafePayDAO;
import Model.DTO.SafePayDTO;

public class kakaopayAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafePayDTO dto = new SafePayDTO();
		HttpSession session = request.getSession();
		dto.setUserId((String)session.getAttribute("uniId"));
		dto.setTotalMoney(request.getParameter("totalPrice"));
		dto.setUserName(request.getParameter("name"));
		dto.setUserPh(request.getParameter("phone"));
		SafePayDAO dao =  new SafePayDAO();
		dao.kakaoPay(dto);
	}
	
}
