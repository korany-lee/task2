package Controller.Adopt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AdoptController  extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	
	protected void doProcess(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		String URI = request.getRequestURI();
		String Path = request.getContextPath();
		String command = URI.substring(Path.length());
		
		if(command.equals("/adopt.at")) {
			if(request.getParameter("page")==null) {
				request.setAttribute("page", 1);
			}else {
				request.setAttribute("page", request.getParameter("page"));
			}
			if(request.getParameter("species")==null) {
			request.setAttribute("species", 1);
			}else {
				request.setAttribute("species", request.getParameter("species"));
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/adopt.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/checklist.at")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/adt_check_list.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/aniDetail.at")) {
			AnimalDetailAction action = new AnimalDetailAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/animal_detail.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/reservation.at")) {
	        DateAction action = new DateAction();
	        action.execute(request, response);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/reservation.jsp");
	        dispatcher.forward(request, response);
		}else if(command.equals("/onlyAniResult.at")) {
			AnimalListAction action = new AnimalListAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/resultAni.jsp");
	        dispatcher.forward(request, response);
	        //매칭 라디오버튼 선택 다 한후에 매칭버튼 누르면 action 후 결과창 보여짐
		}else if(command.equals("/adtchecklist.at")) {
			MatchingAction action = new MatchingAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/matchingResult.jsp");
	        dispatcher.forward(request, response);
		}else if(command.equals("/reservationform.at" )){
			reservationFormAction action = new reservationFormAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/reservation_form.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/updateReserv.at")) {
			//예약하기 눌렀을때 DB저장됨
			UpdateReservationAction action = new UpdateReservationAction();
			action.execute(request, response);
			ReservSelectAction action1 = new ReservSelectAction();
			action1.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Adopt/reserv_suc.jsp");
	        dispatcher.forward(request, response);
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
