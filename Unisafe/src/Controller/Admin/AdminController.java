package Controller.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Adopt.AnimalDetailAction;

public class AdminController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	protected void doProcess(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		String URI = request.getRequestURI();
		String Path = request.getContextPath();
		String command = URI.substring(Path.length());
		
		//관리자페이지 누르면 이동
		if(command.equals("/admin.ad")) {
			AniManagerListAction action = new AniManagerListAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/admin_adopt.jsp");
			dispatcher.forward(request, response);
		//등록하기 버튼 누르면 이동(입양하기 전용)
		}else if(command.equals("/aniListUp.ad")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/ani_list_update.jsp");
			dispatcher.forward(request, response);
		//동물등록액션
		}else if(command.equals("/aniUpdate.ad")) {
			AnimalUpdateAction action = new AnimalUpdateAction();
			String path = action.execute(request, response);
			response.sendRedirect(path);
		//등록된 동물 상태 업데이트&삭제	
		}else if(command.equals("/aniModify.ad")) {
			AnimalDetailAction action = new AnimalDetailAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/animal_detail_m.jsp");
			dispatcher.forward(request, response);
		//수정&삭제 액션
		}else if(command.equals("/aniModifyPro.ad")) {
			AnimalModifyProAction action = new AnimalModifyProAction();
			String result = action.execute(request, response);
			response.sendRedirect("aniModify.ad?num="+result );
		}
		//관리자 예약현황 클릭 -> 사용자가 예약한 목록들 나옴
		else if(command.equals("/mgReservationList.ad")) {
			ReservationListAction action = new ReservationListAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/mgReservationList.jsp");
			dispatcher.forward(request, response);
		}
		//관리자가 입양완료 누르면 입양목록에서 삭제
		else if(command.equals("/resDelete.ad")) {
			ResDeleteAction action = new ResDeleteAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("mgReservationList.ad");
			dispatcher.forward(request, response);
		}
		
	}
		

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doProcess(request, response);
	}
}
