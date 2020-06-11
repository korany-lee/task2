package Controller.Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnimalDAO;
import Model.DTO.AnimalDTO;

public class AnimalModifyProAction {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		AnimalDTO ani = new AnimalDTO();
		ani.setAniNum(request.getParameter("aniNum"));
		ani.setAniChar(request.getParameter("char2"));
		ani.setAniGender(request.getParameter("aniGender"));
		ani.setRace(request.getParameter("race"));
		ani.setAniSize(request.getParameter("size"));
		ani.setAniBirth(request.getParameter("aniBirth"));
		
		AnimalDAO dao = new AnimalDAO();
		dao.AnimalModifyUpdate(ani);
		
	   String result = request.getParameter("aniNum");
	  
	   return result;
	}
}
