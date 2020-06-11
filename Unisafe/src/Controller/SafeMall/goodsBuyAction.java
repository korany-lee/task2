package Controller.SafeMall;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.SafeCartDTO;



public class goodsBuyAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String num [] = request.getParameter("chkNum").split(",");
		System.out.println(num.length);
		HttpSession session = request.getSession();
		List<SafeCartDTO> cartList = (List<SafeCartDTO>)session.getAttribute("cartList");
		int totalMoney = 0;
		
		for(String chk : num) {
			for(SafeCartDTO c : cartList)
			{
				if(c.getGoodsSeq().equals(chk) ) {
					totalMoney += c.getGoodsPrice() * c.getQty();
				}
			}
		}
		request.setAttribute("chkNum", request.getParameter("chkNum"));
		session.setAttribute("totalMoneyReal",totalMoney);
		
		SimpleDateFormat  formatter = new SimpleDateFormat("MMddhhmmss");
		String orderNum =  formatter.format(new Date());
		
		session.setAttribute("orderNum",orderNum);
	}

}
