package Controller.Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.ReservationDAO;

public class ReservationListAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReservationDAO dao = new ReservationDAO();
		List list = dao.reservationList();
		request.setAttribute("resList", list);
	}

}
