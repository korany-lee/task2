package Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnimalDAO;
import Model.DAO.ReservationDAO;

public class ResDeleteAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String aniNum = request.getParameter("aniNum");
		System.out.println(aniNum);
		ReservationDAO dao = new ReservationDAO();
		dao.resDel(aniNum);
		AnimalDAO dao2 = new AnimalDAO();
		dao2.aniDel(aniNum);
	}

}
