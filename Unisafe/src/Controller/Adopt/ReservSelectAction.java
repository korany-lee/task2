package Controller.Adopt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.ReservationDAO;
import Model.DTO.ReservationDTO;

public class ReservSelectAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		ReservationDAO dao = new ReservationDAO();
		
		String userId = (String)session.getAttribute("uniId");
		ReservationDTO dto = dao.selectMyReserv(userId);
		
		request.setAttribute("reserv", dto);
		
	}

}
