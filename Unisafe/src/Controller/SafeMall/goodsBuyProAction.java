package Controller.SafeMall;

import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Model.DAO.SafeBuyDAO;

import Model.DTO.SafeBuyDTO;
import Model.DTO.SafeCartDTO;

public class goodsBuyProAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		} 
		catch (UnsupportedEncodingException e) 
		{
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		List<SafeCartDTO> cartList = (List<SafeCartDTO>)session.getAttribute("cartList");
		SafeBuyDTO buy = new SafeBuyDTO();
		buy.setUserId((String)session.getAttribute("uniId"));
		buy.setUserName(request.getParameter("userName"));
		buy.setUserAddr(request.getParameter("address"));
		buy.setUserDetailAddr(request.getParameter("details"));
		buy.setUserPostCode(request.getParameter("postcode"));
		buy.setUserMemo(request.getParameter("memo"));
		buy.setOrderNum(request.getParameter("orderNum"));
		
		String userPh = "";
	      Enumeration enums = request.getParameterNames();
	      while(enums.hasMoreElements())
	      {
	         String name = (String)enums.nextElement();
	          
	         if(name.startsWith("userPh"))
	         {
	            System.out.println(request.getParameter(name));
	            userPh += request.getParameter(name);
	         }
	         
	      }
	      buy.setUserPh(userPh);
		
		SafeBuyDAO dao = new SafeBuyDAO();
		String chkNum [] = request.getParameter("chkNum").split(",");
		System.out.println(request.getParameter("chkNum"));

		for (String chk1 : chkNum) {
			for (SafeCartDTO dto : cartList ) {
				System.out.println("goodsBuyProAction : " + chk1);
				System.out.println("goodsBuyProAction : " + dto.getGoodsSeq());
				if (chk1.equals(dto.getGoodsSeq())) {
					dao.safeBuyInsert(dto, buy);
					cartList.remove(dto);
					break;
				}
			}
		}
		String userName = request.getParameter("userName");
		session.setAttribute("userName",userName);
	}


}
