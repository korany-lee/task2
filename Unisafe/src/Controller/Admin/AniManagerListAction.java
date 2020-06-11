package Controller.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnimalDAO;

public class AniManagerListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String species = request.getParameter("species");
		
		if(request.getParameter("species") == null) { species = "1"; }
		 
		AnimalDAO dao = new AnimalDAO();
		
		List list2 = dao.AniList(species);
		Integer aniCount = dao.AniCount();
		
		//list에 담은 ListPageAnimal
		request.setAttribute("abc", list2);
		request.setAttribute("species", species);
		request.setAttribute("aniCount", aniCount);
	}
}
