package Controller.Manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Member.blackListAction;

public class ManagerController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet
{
	
	protected void doProcess(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		//관리자전용 메뉴를 클릭시 이동되는 페이지
		if(command.equals("/managerPage.mg")) {
			userAllSelect action = new userAllSelect();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("manager/managerPage.jsp");
			dispatcher.forward(request, response);
		}
		//회원관리 페이지로 이동
		else if(command.equals("/userList.mg")) {
			userAllSelect action = new userAllSelect();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("manager/userList.jsp");
			dispatcher.forward(request, response);
		}
		//회원리스트에서 회원아이디 링크 클릭시 상세정보와 삭제기능이 있는 페이지로 이동
		else if(command.equals("/userInfo.mg")) {
			userInfoAction action = new userInfoAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("manager/userInfo.jsp");
			dispatcher.forward(request, response);
		}
		//영구정지 클릭시 b_chk컬럼에 값추가
		else if(command.equals("/userDelete.mg")) {
			blackListAction action2 = new blackListAction();
			action2.execute(request, response);
			response.sendRedirect("userList.mg");
		}
		//월별 가입자현황
		else if(command.equals("/insertChart.mg")) {
			insertChartAction action = new insertChartAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("manager/insertChart.jsp");
			dispatcher.forward(request, response);
		}
		//블랙리스트 회원목록
		else if(command.equals("/blackList.mg")) {
			blackListAllselect action = new blackListAllselect();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("manager/blackList.jsp");
			dispatcher.forward(request, response);
		}
		//정지 해제(블랙리스트 해제)
		else if(command.equals("/blackListDel.mg")) {
			blackListDelAction action = new blackListDelAction();
			action.execute(request, response);
			response.sendRedirect("blackList.mg");
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doProcess(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doProcess(request, response);
	}
}
