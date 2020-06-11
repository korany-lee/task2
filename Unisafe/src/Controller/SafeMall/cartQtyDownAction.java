package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.SafeCartDTO;



public class cartQtyDownAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String goodsNum = request.getParameter("goodsNum");
		HttpSession session = request.getSession();
		List<SafeCartDTO> cartList = (List<SafeCartDTO>)session.getAttribute("cartList");
		for(SafeCartDTO cart : cartList)
		{
			if(cart.getGoodsSeq().equals(goodsNum))
			{
				cart.setQty(cart.getQty()-1);
			}
		}
		
	}

}
