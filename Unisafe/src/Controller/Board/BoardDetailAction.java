package Controller.Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.BoardDAO;
import Model.DTO.BoardDTO;


public class BoardDetailAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String boardNum = request.getParameter("num");
		HttpSession session = request.getSession();
		BoardDAO dao = new BoardDAO();
		dao.plusReadcount(Integer.parseInt(boardNum));
		BoardDTO dto = dao.boardOneselect(boardNum);
		if(dto.getUserId().equals(session.getAttribute("uniId"))) {
			request.setAttribute("flag", "ok");
		}
		request.setAttribute("board", dto);
		
	}
}
