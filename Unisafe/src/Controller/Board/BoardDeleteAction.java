package Controller.Board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.BoardDAO;
import Model.DTO.BoardDTO;

public class BoardDeleteAction {

	public int execute(HttpServletRequest request, HttpServletResponse response) {
		String boardNum = request.getParameter("num");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.boardOneselect(boardNum);
		String fileName=dto.getStoreFileName();
		String path = 
				request.getRealPath("Board\\update");
		File file = new File(path+"\\"+fileName);
		file.delete();
		BoardDTO param = new BoardDTO();
		param.setBoardNum(Integer.parseInt(request.getParameter("num")));
		param.setBoardPass(request.getParameter("boardPw"));
		return dao.boardDelete(param);
	}
}
