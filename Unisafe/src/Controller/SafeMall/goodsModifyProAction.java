package Controller.SafeMall;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO.SafeMallDAO;
import Model.DTO.SafeMallDTO;

public class goodsModifyProAction 
{

	public String execute(HttpServletRequest request, HttpServletResponse response) 
	{
		String realPath = request.getRealPath("SafeMall\\update");
		int limitSize = 1024 * 1024 *5;
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request,realPath,limitSize,"utf-8",new DefaultFileRenamePolicy());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SafeMallDTO dto = new SafeMallDTO();
		dto.setGoodsSeq(multi.getParameter("goodsSeq"));
		dto.setGoodsPrice(Integer.parseInt(multi.getParameter("goodsPrice")));
		dto.setGoodsQty(Integer.parseInt(multi.getParameter("goodsQty")));
		dto.setGoodsContent(multi.getParameter("goodsContent"));
		HttpSession session = request.getSession();
		dto.setUserId((String)session.getAttribute("memId"));
		
		File file = null;
		File file1= null;
		File file2= null;
		SafeMallDAO dao = new SafeMallDAO();
		if(multi.getFile("goodsImage")==null)
		{
			dao.goodsUpdate(dto);
		}
		else if(multi.getFile("goodsImage")!=null)
		{
			String fileName = multi.getParameter("fileDel");
			file = new File(realPath + "\\" +fileName);
			if(file.exists()) file.delete();
			dto.setGoodsImage(multi.getFilesystemName("goodsImage"));
			dao.goodsFileUpdate(dto);
		}
		if(multi.getFile("goodsImage1")==null)
		{
			dao.goodsUpdate(dto);
		}
		else if(multi.getFile("goodsImage1")!=null)
		{
			String fileName1 = multi.getParameter("fileDe1l");
			file1 = new File(realPath + "\\" +fileName1);
			if(file1.exists()) file1.delete();
			dto.setGoodsImage1(multi.getFilesystemName("goodsImage1"));
			dao.goodsFileUpdate(dto);
		}
		if(multi.getFile("goodsImage2")==null)
		{
			dao.goodsUpdate(dto);
		}
		else if(multi.getFile("goodsImage2")!=null)
		{
			String fileName2 = multi.getParameter("fileDel2");
			file2 = new File(realPath + "\\" +fileName2);
			if(file2.exists()) file2.delete();
			dto.setGoodsImage2(multi.getFilesystemName("goodsImage2"));
			dao.goodsFileUpdate(dto);
		}
		return multi.getParameter("goodsSeq");
		
	}

}
