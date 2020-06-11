package Controller.Adopt;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.AnimalDAO;
import Model.DTO.AnimalDTO;

public class AnimalListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//List로 만든거
		//회원들이 보는 '입양하기' 탭을 눌렀을 때 나오는 동물들 목록 보기
		int page = 1;
		int limit = 12;
		int limitPage = 10;
		
		String condition = " ";
	
		///
		if(request.getParameter("male") != null && request.getParameter("female") == null) {
			condition += " and ani_gender like '%수컷%' ";	
		}
		if(request.getParameter("female") != null && request.getParameter("male") == null) {
			condition += " and ani_gender like '%암컷%' ";
		}
		if(request.getParameter("young") != null) {
			condition += " and ani_age < '3' ";
		}
		if(request.getParameter("grownup") != null) {
			condition += " and ani_age < '10'";
		}
		if(request.getParameter("senior") != null) {
			condition += " and ani_age > '11'";
		}
		if(request.getParameter("klein") != null) {
			condition += " and regexp_like (ani_size, '소형|작음') ";
		}
		if(request.getParameter("mittel") != null) {
			condition += " and ani_size like '%중형%' ";
		}
		if(request.getParameter("gross") != null) {
			condition += " and ani_size like '%대형%' ";
		}
		if(request.getParameter("help") != null) {
			condition += " and ani_char like '%문제%' ";
		}
		if(request.getParameter("anfaenger") != null) {
			condition += " and ani_char like '%처음%' ";
		}
		if(request.getParameter("magkinder") != null) {
			condition += " and ani_char like '%가정친화%' ";
		}
		if(request.getParameter("kastriert") != null) {
			condition += " and ani_gender like '%중성화%' ";
		}
		if(request.getParameter("stadt") != null) {
			condition += " and ani_char like '%도시%' ";
		}
		if(request.getParameter("maganderehunde") != null) {
			condition += " and ani_char like '%다른 동물%' ";
		}
		
		System.out.println(condition);
		///
		
		String species = request.getParameter("species");
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		if(request.getParameter("species") == null) { species = "1"; }
		
		AnimalDAO dao = new AnimalDAO();
		
		List list = dao.ListPageAnimal(page, limit, species, condition);
		Integer aniCount = dao.AniCount();
		
		//list에 담은 ListPageAnimal
		request.setAttribute("listAni", list);
		request.setAttribute("species", species);
		request.setAttribute("aniCount", aniCount);
		
		int maxPage = (int)((double)aniCount/limit + 0.95);
		int startPage = (int)(((double)page/limitPage + 0.95)-1)*limit+1;
		int endPage = startPage + limitPage - 1;
		if(endPage > maxPage) endPage = maxPage;
		
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("page", page);
	}
}
