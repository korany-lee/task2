package Controller.Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet
{
	
	protected void doProcess(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		//메인페이지
		if(command.equals("/index.us"))
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("Unisafe/welcome.jsp");
			dispatcher.forward(request, response);
		}
		//중복확인 팝업창 띄우기
		else if(command.equals("/userConfirm.us")) {
			MemberConfirmAction action = new MemberConfirmAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/confirm.jsp");
			dispatcher.forward(request, response);
		}
		//로그인시 홈으로
		else if(command.equals("/safeLogin.us"))
		{
			loginAction action = new loginAction();
			 action.execute(request, response);
			
		}
		//관리자로그인
		else if(command.equals("/managerView.us")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Unisafe/welcome.jsp");
			dispatcher.forward(request, response);
		}
		//회원가입시 완료시 메인으로
		else if(command.equals("/memberJoinPro.us"))
		{
			memberJoinProAction action = new memberJoinProAction();
			String path = action.execute(request, response);
			System.out.println(path);
			if(path != null) {
				response.sendRedirect(path);
			} else if(path == null) {
				return;
			}
		}
		//회원가입 완료 후 메일확인 전에 뜨는 페이지
		else if(command.equals("/joinHold.us")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/joinHold.jsp");
			dispatcher.forward(request, response);
		}
		//회원가입시 설문조사 페이지로
		else if(command.equals("/usti.us"))
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/usti.jsp");
			dispatcher.forward(request, response);
		}
		//usti 80점이상 일때 회원가입페이지로 이동
		else if(command.equals("/ustiAction.us"))
		{
			UstiAction action = new UstiAction();
			String path = action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
			dispatcher.forward(request, response);
		}
		//받은 메일에서 링크 클릭시 회원가입이 완료 또는 실패 페이지로 이동
		else if(command.equals("/memberOk.us")) {
			MemberMailOkAction action = new MemberMailOkAction();
			String path = action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}
		//로그아웃 클릭시 로그아웃
		else if(command.equals("/safeLogout.us")) {
			logoutAction action = new logoutAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Unisafe/welcome.jsp");
			dispatcher.forward(request, response);
		}
		//마이페이지 클릭시 자기자신정보 페이지로 이동
		else if(command.equals("/myPage.us")) {
			userSelectAction action = new userSelectAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/myPage.jsp");
			dispatcher.forward(request, response);
		}
		//내정보수정 버튼을 누르면 비밀번호 입력화면으로 이동
		else if(command.equals("/userModify.us")) {
			userSelectAction action = new userSelectAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/userModify.jsp");
			dispatcher.forward(request, response);
		}
		//비밀번호 입력하면 수정할 수 있는 페이지로 이동
		else if(command.equals("/userModifyPro.us")) {
			userPwChkAction action = new userPwChkAction();
			String path = action.execute(request, response);
			if(path != null) { 
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
			} else {
				return;
			}
		}
		//수정할 정보 입력후 수정하기 버튼을 누르면 수정되는 기능
		else if(command.equals("/userModifyProAction.us")) {
			userModifyProAction action = new userModifyProAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("myPage.us");
			dispatcher.forward(request, response);
		}
		//비밀번호 변경 버튼 클릭시 새로운 비밀번호 입력창으로 가기
		else if(command.equals("/pwModify.us")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/pwModify.jsp");
			dispatcher.forward(request, response);
		}
		//새 비밀번호 새비밀번호 확인 입력시 변경되는 기능
		else if(command.equals("/pwModifyPro.us")) {
			userSelectAction action2 = new userSelectAction();
			action2.execute(request, response);
			pwModifyAction action = new pwModifyAction();
			String path = action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}
		//회원탈퇴 클릭시 회원삭제
		else if(command.equals("/userSelfDel.us")) {
			userSelfDelAction action = new userSelfDelAction();
			action.execute(request, response);
			response.sendRedirect("index.us");
		}else if (command.equals("/introduce.us")) { // 소개페이지
				RequestDispatcher dispatcher = request.getRequestDispatcher("Unisafe/introduce.jsp");
				dispatcher.forward(request, response);
		}else if (command.equals("/contact.us")) { // 연락처
				RequestDispatcher dispatcher = request.getRequestDispatcher("Unisafe/contact.jsp");
				dispatcher.forward(request, response);			
		// 사이트맵
		}else if (command.equals("/sitemap.us")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Unisafe/sitemap.jsp");
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
