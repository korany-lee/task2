package Controller.Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class userPwChkAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String path = null;
		HttpSession session = request.getSession();
		String userPw = request.getParameter("userPw");
		String userId = (String) session.getAttribute("uniId");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.memberOneSelect(userId);
		request.setAttribute("member", dto);
		Integer i = dao.userPwChk(userId, userPw);
		System.out.println("리턴받은 i값3 : " + i);
		
		if(i == 1) {	//비밀번호 일치
			path = "member/userModifyPro.jsp";
		} else if(i == 0) {	//비밀번호 불일치
			try {
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("UTF-8");
			     PrintWriter writer;
				writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
			     writer.println("alert('비밀번호가 다릅니다.');");
			     writer.println("location.href='userModify.us'");
			    writer.println("</script>");
			    writer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return path;
		
		
	}

}










