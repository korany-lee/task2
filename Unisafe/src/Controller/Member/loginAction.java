package Controller.Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;

public class loginAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		System.out.println("입력한 아이디 : " + userId);
		System.out.println("입력한 비밀번호 : " + userPw);
		MemberDAO dao = new MemberDAO();
		Integer i = dao.userLogin(userId, userPw);
		System.out.println("리턴받은 i값 : " + i);
		HttpSession session = request.getSession();
		String path = null;
		
		String tf = dao.blackListChk(userId);
		System.out.println("tf:"+tf);
		if(tf.equals("F")) {	//b_chk 컬럼에 값:0 (로그인 가능)
		
		if(i == 1) {	//로그인 가능
				//session.setAttribute("uniId", userId);
				session.setAttribute("uniPw", userPw);
			     PrintWriter writer;
				try {
					response.setContentType("text/html; charset=utf-8");
					response.setCharacterEncoding("UTF-8");
					writer = response.getWriter();
					writer.println("<script type='text/javascript'>");
				     writer.println("location.href='index.us'");
				    writer.println("</script>");
				} catch (IOException e) {
					e.printStackTrace();
				}
		} else if(i == 0) {	//비밀번호 틀림
			try {
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("UTF-8");
			     PrintWriter writer;
				writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
			     writer.println("alert('비밀번호가 다릅니다.');");
			     writer.println("location.href='index.us'");
			    writer.println("</script>");
			    writer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}  else if(i == -1) {	//아이디 없음
			try {
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("UTF-8");
			     PrintWriter writer;
				writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
			     writer.println("alert('아이디가 없거나 발송한 메일을 확인해주세요.');");
			     writer.println("location.href='index.us'");
			    writer.println("</script>");
			    writer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else if (i == 2) {	//관리자 로그인
			session.setAttribute("mg", userId);
			PrintWriter writer;
			try {
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("UTF-8");
				writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
			     writer.println("location.href='managerView.us'");
			    writer.println("</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		////b_chk 컬럼에 값:1 (영구정지된 계정)
		} else if(tf.equals("T")) {
			try {
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("UTF-8");
			     PrintWriter writer;
				writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
			     writer.println("alert('허위사실이 확인되어 가입제한된 정보입니다.');");
			     writer.println("location.href='index.us'");
			    writer.println("</script>");
			    writer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return path;
	}

}
























