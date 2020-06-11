package Controller.SafeMall;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafeMallDAO;
import Model.DTO.SafeCartDTO;
import Model.DTO.SafeMallDTO;

public class AddCartAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String goodsSeq = request.getParameter("num");
		SafeMallDAO dao = new SafeMallDAO();
		SafeMallDTO dto = dao.goodsDetailSelect(goodsSeq);
		
		//장바구니 
		SafeCartDTO cart = null;
		
		HttpSession session = request.getSession();
		boolean newcart = true;//현재 상품이 새로운 상품인지 확인함.
		List<SafeCartDTO> list = (List<SafeCartDTO>)session.getAttribute("cartList");
		if(list == null)
		{
			list = new ArrayList();
		}
		for(SafeCartDTO c : list)
		{
			if(c.getGoodsSeq().equals(dto.getGoodsSeq()))
			{
				newcart = false;
				c.setQty(c.getQty()+1);
			}
		}
		if(newcart)
		{
			cart = new SafeCartDTO();
			cart.setGoodsSeq(dto.getGoodsSeq());
			cart.setGoodsName(dto.getGoodsName());
			cart.setGoodsPrice(dto.getGoodsPrice());
			cart.setGoodsImage(dto.getGoodsImage());
			cart.setQty(1);
			list.add(cart);
		}
		session.setAttribute("cartList",list);
		
	}
		
		
}


