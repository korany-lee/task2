package Controller.SafeMall;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafePayDAO;
import Model.DTO.SafePayDTO;

public class salesChartAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		SafePayDAO dao = new SafePayDAO();
		SafePayDTO dto = dao.selectTotalMoney();
		request.setAttribute("totalMoney", dto);
		
	}

}
