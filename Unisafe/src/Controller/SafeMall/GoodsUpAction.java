package Controller.SafeMall;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.SafeMallDAO;
import Model.DTO.SafeMallDTO;

public class GoodsUpAction 
{

	public void execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String filePath = "SafeMall\\update";
		String realPath = request.getRealPath(filePath);
		System.out.println(realPath);
		int fileSize = 1024 * 1024 * 5;
		HttpSession session = request.getSession();
		try
		{
			MultipartRequest multi = new MultipartRequest(request,realPath,fileSize,"UTF-8",new DefaultFileRenamePolicy());
			SafeMallDTO dto = new SafeMallDTO(null,multi.getParameter("goodsNum"),
					(String)session.getAttribute("uniId"),
					multi.getParameter("goodsName"),
					Integer.parseInt(multi.getParameter("goodsPrice")),
					Integer.parseInt(multi.getParameter("goodsQty")),
					multi.getParameter("goodsContent"),
					multi.getFilesystemName("goodsImage"),
					multi.getFilesystemName("goodsImage1"),
					multi.getFilesystemName("goodsImage2"),
					multi.getFilesystemName("goodsImage3"),
					null,multi.getParameter("goodsKind"));
			SafeMallDAO dao = new SafeMallDAO();
			dao.insertGoods(dto);
			
			
		} 
		catch (IOException e) 
		{
			e.printStackTrace();
		}
		
	}

}
