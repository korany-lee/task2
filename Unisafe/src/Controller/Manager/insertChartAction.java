package Controller.Manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.MemberDAO;
import Model.DTO.MemberDTO;

public class insertChartAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.insertChart();
		request.setAttribute("chart", dto);
	}

}
