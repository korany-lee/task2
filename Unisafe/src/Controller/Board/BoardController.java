package Controller.Board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardController  extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
		
		protected void doProcess(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
			String RequestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = RequestURI.substring(contextPath.length());
			
			if(command.equals("/board.bd")){
				BoardListAction action = new BoardListAction();
				action.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Board/board_list.jsp");
				dispatcher.forward(request, response);
			}else if(command.equals("/boardWrite.bd")) {
				HttpSession session = request.getSession();
				request.setAttribute("user_id", session.getAttribute("uniId"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("Board/board_write.jsp");
				dispatcher.forward(request, response);
			}else if(command.equals("/boardWritePro.bd")) {
				BoardWritePro action = new BoardWritePro();
				action.execute(request, response);
				response.sendRedirect("board.bd");
			}else if(command.equals("/boardDetailAction.bd")) {
				BoardDetailAction action = new BoardDetailAction();
				action.execute(request,response);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Board/board_view.jsp");
				dispatcher.forward(request, response);
			}else if(command.equals("/boardModify.bd")) {
				BoardDetailAction action = new BoardDetailAction();
				action.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Board/board_modify.jsp");
				dispatcher.forward(request, response);
			}else if(command.equals("/BoardModifyAction.bd")) {
				BoardModifyAction action = new BoardModifyAction();
				action.execute(request,response);
				response.sendRedirect("boardDetailAction.bd?num="+
				request.getParameter("BOARD_NUM"));
			}else if(command.equals("/boardDelete.bd")) {
				request.setAttribute("num", request.getParameter("num"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("Board/board_delete.jsp");
				dispatcher.forward(request, response);
			}else if(command.equals("/boardDeletePro.bd")) {
				BoardDeleteAction action = new BoardDeleteAction();
				int i = action.execute(request,response);
				String num = request.getParameter("num");
				if (i == 0) {
					response.sendRedirect("boardDetailAction.bd?num=" + num);
				}else {
					response.sendRedirect("board.bd");
				}
			}
		}
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doProcess(request, response);
		}
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doProcess(request, response);
		}
}
