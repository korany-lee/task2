package Controller.SafeMall;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.SafeCartDTO;

public class CartDeleteAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String [] nums = request.getParameterValues("delete");
		List<SafeCartDTO> cartList = (List<SafeCartDTO>)session.getAttribute("cartList");
		for(String str : nums)
		{
			for(SafeCartDTO c : cartList)
			{
				if(c.getGoodsSeq().toString().equals(str))
				{
					cartList.remove(c);
					break;
				}
					
			}
		}
	}

}
