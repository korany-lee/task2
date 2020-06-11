package Controller.SafeMall;

import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.SafeMallDAO;
import Model.DAO.SafePayDAO;
import Model.DTO.SafeCartDTO;
import Model.DTO.SafePayDTO;

public class goodsPayProAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SafePayDAO dao = new SafePayDAO();
		SafePayDTO dto = new SafePayDTO();
		
		HttpSession session = request.getSession();
		dto.setUserId((String)session.getAttribute("uniId"));
		dto.setUserName(request.getParameter("userName"));
		dto.setTotalMoney(request.getParameter("totalMoney"));
		dto.setUserCard(request.getParameter("userCard"));
		dto.setUserPh(request.getParameter("userPh"));
		dto.setUserCardCvc(request.getParameter("usercvcNo"));
		String userCardNo = "";
		String userCardDate = "";
	      Enumeration enums = request.getParameterNames();
	      while(enums.hasMoreElements())
	      {
	         String name = (String)enums.nextElement();
	          
	         if(name.startsWith("userCardNo"))
	         {
	            
	            userCardNo += request.getParameter(name);
	         }
	         else if(name.startsWith("userCardDate"))
	         {
	            
	            userCardDate += request.getParameter(name);
	         }
	      }
	      dto.setUserCardDate(userCardDate);
	      dto.setUserCardNum(userCardNo);
	     
	      dao.insertPay(dto);
	      
	     
	      
	      
	     
	     
	      
	}

}
