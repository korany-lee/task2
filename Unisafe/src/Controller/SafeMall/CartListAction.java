package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.SafeCartDTO;

public class CartListAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		List<SafeCartDTO> cartList = (List<SafeCartDTO>)session.getAttribute("cartList");
		int totalMoney = 0;
		for(SafeCartDTO c : cartList)
		{
			totalMoney += c.getGoodsPrice() * c.getQty();
		}
		session.setAttribute("totalMoney",totalMoney);
	}

}
