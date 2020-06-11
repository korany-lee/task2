package Controller.Board;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.BoardDAO;
import Model.DTO.BoardDTO;


public class BoardWritePro {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String filePath = "C:/src/Unisafe/WebContent/Board/update"; 	
		//String realPath = request.getRealPath(filePath);
		int fileSize = 1024*1024*10;
		
		try {
			MultipartRequest multi = new MultipartRequest(request, filePath, fileSize, "utf-8", new DefaultFileRenamePolicy());
			HttpSession session = request.getSession();
			BoardDTO dto = new BoardDTO();
			
			dto.setUserId((String)session.getAttribute("uniId"));
			dto.setBoardContent(multi.getParameter("BOARD_CONTENT"));
			//dto.setBoardName(multi.getParameter("BOARD_NAME"));
			dto.setBoardPass(multi.getParameter("BOARD_PASS"));
			dto.setBoardSubject(multi.getParameter("BOARD_SUBJECT"));
			BoardDAO dao = new BoardDAO();
		    dao.boardInsert(dto);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
