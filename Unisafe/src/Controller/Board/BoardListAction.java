package Controller.Board;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.BoardDAO;
import Model.DTO.BoardDTO;

public class BoardListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	    Integer page = 1;
	    if (request.getParameter("page") != null) {
	       page = Integer.parseInt(request.getParameter("page"));
	    }
	    int limit = 10;
	    int limitPage = 10;

		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = dao.boardAllSelect(page,limit);
		
		Integer count = dao.boardCount();	//전체 게시물수
		
		int maxPage = (int)((double)count/limit + 0.95);
	    int startPage = (int)(((double)page/limitPage + 0.95)-1)*limitPage + 1;
	    int endPage = startPage + limitPage - 1;
	    if (endPage > maxPage) {
	       endPage = maxPage;
	    }
		
		request.setAttribute("boards", list);
		request.setAttribute("count", count);
	    request.setAttribute("maxPage", maxPage);
	    request.setAttribute("startPage", startPage);
	    request.setAttribute("endPage", endPage);
	    request.setAttribute("page", page);
	}
}
