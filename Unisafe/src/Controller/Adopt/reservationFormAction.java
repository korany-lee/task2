package Controller.Adopt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.AnimalDAO;
import Model.DAO.MemberDAO;
import Model.DTO.AnimalDTO;
import Model.DTO.MemberDTO;

public class reservationFormAction {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String date = request.getParameter("date");
		String aniNum = request.getParameter("num");
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("uniId");
		
		AnimalDAO dao = new AnimalDAO();
		
		AnimalDTO ani = dao.ReservAni(aniNum);
		
		request.setAttribute("animal", ani);
		request.setAttribute("num", aniNum);
		
		MemberDAO dao2 = new MemberDAO();
		
		MemberDTO mem = dao2.ResevMem(userId);
		
		request.setAttribute("member", mem);
		request.setAttribute("date", date);
	
		
	}
}
