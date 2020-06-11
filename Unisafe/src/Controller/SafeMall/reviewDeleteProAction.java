package Controller.SafeMall;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeReviewDAO;

public class reviewDeleteProAction 
{

	public Integer execute(HttpServletRequest request, HttpServletResponse response)
	{
		String realPath = request.getRealPath("SafeMall\\review");
		File file = new File(realPath+"\\"+request.getParameter("reviewImage"));
		file.delete();
		
		
		String reviewPass = request.getParameter("reviewPass");
		Integer reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		System.out.println(reviewPass);
		System.out.println(reviewNum);
		
		SafeReviewDAO dao  = new SafeReviewDAO();
		Integer result = dao.reviewDelete(reviewPass,reviewNum);
		
		return result;
		
	}

}
