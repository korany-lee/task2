package Controller.Member;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class memberJoinProAction {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		MemberDTO dto = new MemberDTO();
		dto.setUserId(request.getParameter("userId"));
		dto.setUserPw(request.getParameter("userPw"));
		dto.setUserName(request.getParameter("userName"));
		String birth = request.getParameter("userBirth");
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = dt.parse(birth);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Timestamp userBirth = new Timestamp(date.getTime());
		
		dto.setUserBirth(userBirth);
		
		//휴대폰 번호 합치기
		
		String userPh = "";
		String userEmail = "";
		Enumeration enums = request.getParameterNames();
		while(enums.hasMoreElements())
		{
			String name = (String)enums.nextElement();
			if(name.startsWith("userPh"))
			{
				userPh += request.getParameter(name);
			}
			else if(name.startsWith("userEmail"))
			{
				userEmail += request.getParameter(name);
			}
		}
		dto.setUserEmail(userEmail);
		dto.setUserPh(userPh);
		String path = null;
		
		MemberDAO dao = new MemberDAO();
		Integer result = dao.memberJoin(dto);
		//회원가입 실패시 회원가입 화면으로
		if(result == null) {
			path = "ustiAction.us";
		//회원가입 완료시 메인화면으로
		} else {
				MemberMailAction mail = new MemberMailAction();
				mail.sendMail(dto.getUserEmail());
				path = "joinHold.us";
		}
		System.out.println("path = " + path);
		return path;
	}

}










