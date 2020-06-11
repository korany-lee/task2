package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.SafeCartDTO;



public class cartQtyUpAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String goodsNum = request.getParameter("goodsNum");
		System.out.println(goodsNum);
		HttpSession session = request.getSession();
		List<SafeCartDTO> cartList = (List<SafeCartDTO>)session.getAttribute("cartList");
		for(SafeCartDTO cart : cartList)
		{
			System.out.println(cart.getGoodsSeq());
			System.out.println(goodsNum);
			if(cart.getGoodsSeq().equals(goodsNum))
			{
				cart.setQty(cart.getQty()+1);
			}
		}
	}
		

}
