package Controller.SafeMall;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.SafeReviewDAO;
import Model.DTO.SafeReviewDTO;

public class reviewWriteProAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String filePath = "SafeMall\\review";
		String realPath = request.getRealPath(filePath);
		int fileSize = 1024 * 1024 * 5;
		HttpSession session = request.getSession();
		
		try
		{
			MultipartRequest multi = new MultipartRequest(request,realPath,fileSize,"UTF-8",new DefaultFileRenamePolicy());
			SafeReviewDTO dto = new SafeReviewDTO();
			dto.setUserId((String)session.getAttribute("uniId"));
			dto.setUserName(multi.getParameter("userName"));
			dto.setReviewSubject(multi.getParameter("reviewSubject"));
			dto.setReviewContent(multi.getParameter("reviewContent"));
			dto.setUserSatis(multi.getParameter("userSatis"));
			dto.setReviewImage(multi.getFilesystemName("reviewImage"));
			dto.setReviewPass(multi.getParameter("reviewPass"));
			SafeReviewDAO dao = new SafeReviewDAO();
			dao.insertReview(dto);
		}
		catch (IOException e) 
		{
			e.printStackTrace();
		}
	}
}
