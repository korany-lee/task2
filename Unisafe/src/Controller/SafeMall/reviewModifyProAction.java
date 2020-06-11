package Controller.SafeMall;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.SafeReviewDAO;
import Model.DTO.SafeReviewDTO;


public class reviewModifyProAction 
{

	public Integer execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String realPath = request.getRealPath("SafeMall\\review");
		int limitSize = 1024 * 1024 *5;
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request,realPath,limitSize,"utf-8",new DefaultFileRenamePolicy());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SafeReviewDTO dto = new SafeReviewDTO ();
		dto.setUserName(multi.getParameter("userName"));
		dto.setReviewSubject(multi.getParameter("reviewSubject"));
		dto.setReviewContent(multi.getParameter("reviewContent"));
		dto.setUserSatis(multi.getParameter("userSatis"));
		dto.setReviewPass(multi.getParameter("reviewPass"));
		dto.setReviewNum(Integer.parseInt(multi.getParameter("reviewNum")));
		HttpSession session = request.getSession();
		dto.setUserId((String)session.getAttribute("uniId"));
		
		File file = null;
		Integer result = 0;
		SafeReviewDAO dao = new SafeReviewDAO();
		if(multi.getFile("reviewImage")==null)
		{
			result = dao.reviewModify(dto);
		}
		else if(multi.getFile("reviewImage")!=null)
		{
			String fileName = multi.getParameter("fileDel");
			file = new File(realPath + "\\" +fileName);
			if(file.exists()) file.delete();
			dto.setReviewImage(multi.getFilesystemName("reviewImage"));
			result = dao.reviewFileModify(dto);
		}
		return result;
		
	}

}
