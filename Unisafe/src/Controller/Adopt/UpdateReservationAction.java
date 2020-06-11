package Controller.Adopt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.ReservationDAO;
import Model.DTO.ReservationDTO;

public class UpdateReservationAction {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		ReservationDTO dto = new ReservationDTO();
		
		dto.setAniNum(request.getParameter("num"));
		dto.setResTime(request.getParameter("time"));
		dto.setResDate(request.getParameter("date"));
		dto.setAniImage(request.getParameter("aniImage"));
		dto.setUserId((String)session.getAttribute("uniId"));
		dto.setUserPh(request.getParameter("userPh"));
		dto.setAniName(request.getParameter("aniName"));
		dto.setUserName(request.getParameter("userName"));
		
		ReservationDAO dao = new ReservationDAO();
		
		dao.InsertReserv(dto);
		
		
	
		
		
	
	}
}
