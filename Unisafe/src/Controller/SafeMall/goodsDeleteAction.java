package Controller.SafeMall;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.SafeMallDAO;

public class goodsDeleteAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String realPath = request.getRealPath("SafeMall\\update");
		File file = new File(realPath+"\\"+request.getParameter("image"));
		file.delete();
		File file1 = new File(realPath+"\\"+request.getParameter("image1"));
		file1.delete();
		File file2 = new File(realPath+"\\"+request.getParameter("image2"));
		file2.delete();
		
		SafeMallDAO dao = new SafeMallDAO();
		 dao.goodsDelete(request.getParameter("num"));
		
		
		
	}

}
