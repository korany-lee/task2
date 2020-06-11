package Controller.SafeMall;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SafeMallController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	
	protected void doProcess(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException 
	{
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		//메인페이지
		if(command.equals("/safemall.sm"))
		{
			goodsListAction action = new goodsListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/SafeMall.jsp");
			dispatcher.forward(request, response);
		}
		//상품 등록 페이지 열기
		
		else if(command.equals("/goodsUp.sm"))
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/goodsUp.jsp");
			dispatcher.forward(request, response);
		}
		//상품 등록 submit
		else if(command.equals("/goodsUpAction.sm"))
		{
			GoodsUpAction action = new GoodsUpAction();
			action.execute(request,response);
			response.sendRedirect("safemall.sm");
		}
		//육포류 페이지
		else if(command.equals("/safeMallJerky.sm"))
		{
			jerkyListAction action = new jerkyListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/jerky.jsp");
			dispatcher.forward(request, response);
		}
		//뼈간식류 페이지
		else if(command.equals("/safeMallBones.sm"))
		{
			bonesListAction action = new bonesListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/bones.jsp");
			dispatcher.forward(request, response);
		}
		//악세서리 페이지
		else if(command.equals("/safeMallAccessory.sm"))
		{
			accessoryListAction action = new accessoryListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/accessory.jsp");
			dispatcher.forward(request, response);
		}
		//제품 상세보기 페이지
		
		else if(command.equals("/goodsDetail.sm"))
		{
			goodsDetailAction action = new goodsDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/goodsDetail.jsp");
			dispatcher.forward(request, response);
		}
		//상품 수정하기 페이지
		else if(command.equals("/goodsModify.sm"))
		{
			goodsDetailAction action = new goodsDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/goodsModify.jsp");
			dispatcher.forward(request, response);
		}
		//상품 수정 submit
		else if(command.equals("/goodsModifyPro.sm"))
		{
			goodsModifyProAction action = new goodsModifyProAction();
			String path = action.execute(request,response);
			response.sendRedirect("goodsDetail.sm?num="+path);
		}
		//상품 삭제하기
		else if(command.equals("/goodsDelete.sm"))
		{
			
			goodsDeleteAction action = new goodsDeleteAction();
			action.execute(request,response);
			response.sendRedirect("safemall.sm");
		}
		//장바구니 리스트 페이지
		else if(command.equals("/safeMallCart.sm"))
		{
			CartListAction action = new CartListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/cartList.jsp");
			dispatcher.forward(request,response);
		}
		//장바구니 담기
		else if(command.equals("/addCart.sm"))
		{
			AddCartAction action = new AddCartAction();
			action.execute(request,response);
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("var result = confirm('장바구니로 이동하시겠습니까?');");
			out.println("if(result){location.href='safeMallCart.sm';}");
			out.println("else{history.back(-1);}");
			out.println("</script>");
			out.close();
		}
		//장바구니 삭제
		else if(command.equals("/goodsCartDelete.sm"))
		{
			CartDeleteAction action = new CartDeleteAction();
			action.execute(request,response);
			response.sendRedirect("safeMallCart.sm");
		}
		//장바구니 수량 증가
		else if(command.equals("/cartQtyUp.sm"))
		{

			cartQtyUpAction action = new cartQtyUpAction();
			action.execute(request,response);
			response.sendRedirect("safeMallCart.sm");
		}
		//수량 감소
		else if(command.equals("/cartQtyDown.sm"))
		{
			cartQtyDownAction action = new cartQtyDownAction();
			action.execute(request,response);
			response.sendRedirect("safeMallCart.sm");
		}
		//상품 구매 페이지
		else if(command.equals("/safeMallGoodsBuy.sm"))
		{
			goodsBuyAction action = new goodsBuyAction();
			action.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/goodsBuy.jsp");
			dispatcher.forward(request,response);
		}
		//배송 내용db에 넣고 결제창 열기
		else if(command.equals("/goodsPay.sm"))
		{
			goodsBuyProAction action = new goodsBuyProAction();
			action.execute(request,response);
			
			goodsPayAction action1 = new goodsPayAction();
			action1.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/goodsPay.jsp");
			dispatcher.forward(request,response);
		}
		//결제 submit
		else if(command.equals("/goodsPayPro.sm"))
		{
			goodsPayProAction action = new goodsPayProAction();
			action.execute(request,response);
			goodsPayAction action1 = new goodsPayAction();
			action1.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/goodsPayOk.jsp");
			dispatcher.forward(request,response);
		}
		//후기 페이지 
		
		else if(command.equals("/safeMallReview.sm"))
		{
			reviewListAction action = new reviewListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReview.jsp");
			dispatcher.forward(request,response);
		}
		//후기 등록 페이지
		else if(command.equals("/safeReviewWrite.sm"))
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReviewWrite.jsp");
			dispatcher.forward(request,response);
		}
		//후기 submit
		else if(command.equals("/safeReviewWritePro.sm"))
		{
			reviewWriteProAction action = new reviewWriteProAction();
			action.execute(request,response);
			response.sendRedirect("safeMallReview.sm");
		}
		//후기 상세페이지
		else if(command.equals("/reviewDetail.sm"))
		{
			reviewDetailAction action = new reviewDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReviewDetail.jsp");
			dispatcher.forward(request,response);
		}
		//후기 수정 페이지
		else if(command.equals("/reviewModify.sm"))
		{
			reviewDetailAction action = new reviewDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReviewModify.jsp");
			dispatcher.forward(request,response);
		}
		//후기 수정 submit
		else if(command.equals("/safeReviewModifyPro.sm"))
		{
			reviewModifyProAction action = new reviewModifyProAction();
			Integer result = action.execute(request,response);
			if(result == 1)
			{
				 response.sendRedirect("safeMallReview.sm"); 
			}
			else if(result == 0)
			{
				response.setContentType("text/html;charset=UTF-8");
				  PrintWriter out = response.getWriter();
				  out.println("<script>");
				  out.println("alert('비밀번호가 일치하지 않습니다');");
				  out.println("location.href='safeMallReview.sm';");
				  out.println("</script>");
				  out.close();
			}
		}
		//후기 삭제하기
		else if(command.equals("/reviewDelete.sm"))
		{
			reviewDetailAction action = new reviewDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReviewDelete.jsp");
			dispatcher.forward(request,response);
		}
		
		//후기 삭제 submit
		else if(command.equals("/safeReviewDeletePro.sm"))
		{
			reviewDeleteProAction action = new reviewDeleteProAction();
			
			Integer result = action.execute(request,response);
			if(result == 1)
			{
				 response.sendRedirect("safeMallReview.sm"); 
			}
			else if(result == 0)
			{
				response.setContentType("text/html;charset=UTF-8");
				  PrintWriter out = response.getWriter();
				  out.println("<script>");
				  out.println("alert('비밀번호가 일치하지 않습니다');");
				  out.println("location.href='safeMallReview.sm';");
				  out.println("</script>");
				  out.close();
			}
		}
		//문의 게시판
		else if(command.equals("/safeMallQ&A.sm"))
		{
			qnaListAction action = new qnaListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeQnA.jsp");
			dispatcher.forward(request,response);
		}
		//문의 등록
		else if(command.equals("/safeQnAWrite.sm"))
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeQnAWrite.jsp");
			dispatcher.forward(request,response);
		}
		//문의 등록 SUBMIT
		else if(command.equals("/qnaWritePro.sm"))
		{
			qnaWriteProAction action = new qnaWriteProAction();
			action.execute(request,response);
			response.sendRedirect("safeMallQ&A.sm");
		}
		//문의 상세 페이지
		
		else if(command.equals("/qnaDetail.sm"))
		{
			qnaDetailAction action  = new qnaDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeQnADetail.jsp");
			dispatcher.forward(request,response);
		}
		//문의 수정
		else if(command.equals("/qnaModify.sm"))
		{
			qnaDetailAction action  = new qnaDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeQnAModify.jsp");
			dispatcher.forward(request,response);
		}
		//문의 수정 submit
		else if(command.equals("/qnaModifyPro.sm"))
		{
			qnaModifyAction action  = new qnaModifyAction();
			Integer result = action.execute(request,response);
			if(result == 1)
			{
				 response.sendRedirect("safeMallQ&A.sm"); 
			}
			else if(result == 0)
			{
				response.setContentType("text/html;charset=UTF-8");
				  PrintWriter out = response.getWriter();
				  out.println("<script>");
				  out.println("alert('비밀번호가 일치하지 않습니다');");
				  out.println("location.href='safeMallQ&A.sm';");
				  out.println("</script>");
				  out.close();
			}
			
		}
		//문의 삭제
		else if(command.equals("/qnaDelete.sm"))
		{
			qnaDetailAction action  = new qnaDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeQnADelete.jsp");
			dispatcher.forward(request,response);
		}
		//문의 삭제 submit
		else if(command.equals("/safeQnADeletePro.sm"))
		{
			qnaDeleteProAction action  = new qnaDeleteProAction();
			Integer result = action.execute(request,response);
			if(result == 1)
			{
				 response.sendRedirect("safeMallQ&A.sm"); 
			}
			else if(result == 0)
			{
				response.setContentType("text/html;charset=UTF-8");
				  PrintWriter out = response.getWriter();
				  out.println("<script>");
				  out.println("alert('비밀번호가 일치하지 않습니다');");
				  out.println("location.href='safeMallQ&A.sm';");
				  out.println("</script>");
				  out.close();
			}
			
		}
		//답변 페이지
		else if(command.equals("/replyWrite.sm"))
		{
			qnaDetailAction action  = new qnaDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReplyWrite.jsp");
			dispatcher.forward(request,response);
		}
		//답변 submit
		else if(command.equals("/replyWritePro.sm"))
		{
			replyProAction action = new replyProAction();
			action.execute(request,response);
			response.sendRedirect("safeMallQ&A.sm");
		}
		//답변 상세보기
		else if(command.equals("/replyDetail.sm"))
		{
			replyDetailAction action  = new replyDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReplyDetail.jsp");
			dispatcher.forward(request,response);
		}
		//답변 수정 페이지
		else if(command.equals("/replyModify.sm"))
		{
			replyDetailAction action  = new replyDetailAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeReplyModify.jsp");
			dispatcher.forward(request,response);
		}
		//답변 수정submit
		else if(command.equals("/replyModifyPro.sm"))
		{
			replyModifyAction action  = new replyModifyAction();
			Integer result = action.execute(request,response);
			response.sendRedirect("replyDetail.sm?num="+result);
		}
		//답변 삭제
		else if(command.equals("/replyDelete.sm"))
		{
			replyDeleteAction action  = new replyDeleteAction();
			action.execute(request,response);
			response.sendRedirect("safeMallQ&A.sm");
		}
		//구매내역 리스트
		else if(command.equals("/safeMallBuyList.sm"))
		{
			buyListAction action  = new buyListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeBuyList.jsp");
			dispatcher.forward(request,response);
		}
		//판매 현황 리스트
		else if(command.equals("/safeMallSellList.sm"))
		{
			sellListAction action  = new sellListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeSellList.jsp");
			dispatcher.forward(request,response);
		}
		//매출 차트
		else if(command.equals("/safeMallSales.sm"))
		{
			salesChartAction action = new salesChartAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safeSales.jsp");
			dispatcher.forward(request,response);
		}
		//관리자 페이지
		
		else if(command.equals("/safeMallMg.sm"))
		{
			goodsListAction action = new goodsListAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/safemallManager.jsp");
			dispatcher.forward(request,response);
		}
		//카카오페이지 열기
		else if(command.equals("/kakaoPay.sm"))
		{
			kakaopayAction action = new kakaopayAction();
			action.execute(request,response);
			RequestDispatcher dispatcher = request.getRequestDispatcher("SafeMall/kakao.jsp");
			dispatcher.forward(request,response);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doProcess(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doProcess(request, response);
	}

}
