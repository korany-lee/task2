package Controller.Adopt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnimalDAO;
import Model.DTO.AnimalDTO;

public class AnimalDetailAction {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AnimalDAO dao = new AnimalDAO();
				
		AnimalDTO ani = dao.OneSelectAni(request.getParameter("num"));
		
		request.setAttribute("animalDetail", ani);
		
	}
}
