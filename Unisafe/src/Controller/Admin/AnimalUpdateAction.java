package Controller.Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.AnimalDAO;
import Model.DTO.AnimalDTO;
import Model.DTO.MatchingDTO;

public class AnimalUpdateAction {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		String filePath = "Adopt\\animal";

		String realPath = request.getServletContext().getRealPath(filePath);
		
		int fileSize = 1024 * 1024 * 5;

		
		MultipartRequest multi = new MultipartRequest (request, realPath, fileSize,
		  "UTF-8", new DefaultFileRenamePolicy());
		 

		HttpSession session = request.getSession();

		AnimalDTO dto = new AnimalDTO();

		dto.setUserId((String) session.getAttribute("memId"));
		dto.setAniName(multi.getParameter("aniName"));
		dto.setAniSize(multi.getParameter("aniSize"));
		dto.setAniBirth(multi.getParameter("aniBirth"));
		dto.setAniChar(multi.getParameter("aniChar"));
		dto.setAniAge(multi.getParameter("aniAge"));
		dto.setFurType(multi.getParameter("furType"));
		String[] no4 = multi.getParameterValues("no4");
		String ani4 = "";
		for (String str : no4) {
			ani4 += str + ",";
		}
		dto.setAniGender(ani4);
		dto.setSpecies(multi.getParameter("species"));
		dto.setRace(multi.getParameter("race"));

		dto.setStoreFileName(multi.getFilesystemName("aniImage1"));
		dto.setStoreFileName2(multi.getFilesystemName("aniImage2"));
		dto.setStoreFileName3(multi.getFilesystemName("aniImage3"));
		dto.setGender(multi.getParameter("gender_m"));
		dto.setStyle(multi.getParameter("style_m"));
		dto.setFamilly(multi.getParameter("family_m"));
		dto.setKid(multi.getParameter("kid_m"));
		dto.setOther(multi.getParameter("other_m"));
		dto.setPast(multi.getParameter("past_m"));
		dto.setHomeStayTime(multi.getParameter("stay_home_m"));
		dto.setWhereHome(multi.getParameter("where_home_m"));
		dto.setWhatHome(multi.getParameter("what_home_m"));
		dto.setAllergy(multi.getParameter("allergy_m"));

		AnimalDAO dao = new AnimalDAO();
		Integer result = dao.AnimalUpdate(dto);

		String path = null;
		if (result != 0) {
			// 저장이 안되면 다시 등록페이지로
			path = "admin.ad";
			// 얘를 보내주는건 controller
		} else {
			// 저장이 됐다면
			path = "aniListUp.ad";

		}
		return path;

	}
}
