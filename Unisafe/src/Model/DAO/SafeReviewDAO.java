package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.SafeReviewDTO;

public class SafeReviewDAO extends DataBaseInfo
{
	final String COLUMNS = "REVIEW_NUM,USER_ID,USER_NAME,REVIEW_PASS,REVIEW_IMAGE,REVIEW_SUBJECT,REVIEW_CONTENT,REVIEW_COUNT,REVIEW_DATE,USER_SATIS";
	
	//리뷰 등록하기
	public void insertReview(SafeReviewDTO dto)
	{
		getConnection();
		sql = "INSERT INTO SAFEREVIEW ("+ COLUMNS +") VALUES(REVIEW_SEQ.NEXTVAL,?,?,?,?,?,?,0,SYSDATE,?)";
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUserId());
			pstmt.setString(2, dto.getUserName());
			pstmt.setString(3,dto.getReviewPass());
			pstmt.setString(4, dto.getReviewImage());
			pstmt.setString(5, dto.getReviewSubject());
			pstmt.setString(6, dto.getReviewContent());
			pstmt.setString(7, dto.getUserSatis());
			pstmt.executeUpdate();
		} 
		catch (SQLException e)
		{

			e.printStackTrace();
		}
		finally
		{
			close();
		}
	}
	//후기 메인에 리스트 출력하기
	public List reviewAllSelect(int page,int limit)
	{
		int startRow = (page-1) * limit +1;
		int endRow = startRow + limit -1;
		getConnection();
		sql = "SELECT * FROM (SELECT ROWNUM RN, "+COLUMNS+" FROM SAFEREVIEW ) WHERE RN >=? AND RN < = ? ORDER BY REVIEW_NUM DESC";
		List list = new ArrayList();
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeReviewDTO dto = new SafeReviewDTO();
				dto.setReviewNum(rs.getInt(2));
				dto.setUserId(rs.getString(3));
				dto.setUserName(rs.getString(4));
				dto.setReviewPass(rs.getString(5));
				dto.setReviewImage(rs.getString(6));
				dto.setReviewSubject(rs.getString(7));
				dto.setReviewContent(rs.getString(8));
				dto.setReviewCount(rs.getInt(9));
				dto.setReviewDate(rs.getTimestamp(10));
				dto.setUserSatis(rs.getString(11));
				list.add(dto);
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return list;
	}
	//후기 상세보기
	public SafeReviewDTO reviewOneSelect(String reviewNum)
	{
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEREVIEW WHERE REVIEW_NUM=?";
		SafeReviewDTO dto = new SafeReviewDTO();
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,reviewNum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setReviewNum(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setReviewPass(rs.getString(4));
				dto.setReviewImage(rs.getString(5));
				dto.setReviewSubject(rs.getString(6));
				dto.setReviewContent(rs.getString(7));
				dto.setReviewCount(rs.getInt(8));
				dto.setReviewDate(rs.getTimestamp(9));
				dto.setUserSatis(rs.getString(10));
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return dto;
		
	}
	//후기 조회수 증가
	public void reviewCountUpdate(String reviewNum)
	{
		getConnection();
		sql = "UPDATE SAFEREVIEW SET REVIEW_COUNT = REVIEW_COUNT+1 WHERE REVIEW_NUM = ?";
			
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reviewNum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			close();
		}
			
	}
	//후기 내용 수정
	public Integer reviewModify(SafeReviewDTO dto)
	{
		getConnection();
		sql = "UPDATE SAFEREVIEW SET USER_NAME = ?,REVIEW_SUBJECT = ?,REVIEW_CONTENT = ?,USER_SATIS = ? WHERE REVIEW_NUM = ? AND REVIEW_PASS = ?";
		Integer result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserName());
			pstmt.setString(2, dto.getReviewSubject());
			pstmt.setString(3, dto.getReviewContent());
			pstmt.setString(4, dto.getUserSatis());
			pstmt.setInt(5, dto.getReviewNum());
			pstmt.setString(6, dto.getReviewPass());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	//후기 이미지 수정
	public Integer reviewFileModify(SafeReviewDTO dto)
	{
		getConnection();
		sql = "UPDATE SAFEREVIEW SET USER_NAME = ?,REVIEW_SUBJECT = ?,REVIEW_CONTENT = ?,USER_SATIS = ?,REVIEW_IMAGE = ? WHERE REVIEW_NUM = ? AND REVIEW_PASS = ?";
		Integer result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserName());
			pstmt.setString(2, dto.getReviewSubject());
			pstmt.setString(3, dto.getReviewContent());
			pstmt.setString(4, dto.getUserSatis());
			pstmt.setString(5, dto.getReviewImage());
			pstmt.setInt(6, dto.getReviewNum());
			pstmt.setString(7, dto.getReviewPass());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//후기 삭제
	public Integer reviewDelete(String reviewPass,Integer reviewNum)
	{
		getConnection();
		sql = "DELETE FROM SAFEREVIEW WHERE REVIEW_NUM = ? AND REVIEW_PASS = ?";
		Integer result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,reviewNum);
			pstmt.setString(2,reviewPass);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			close();		
		}
		
		return result;
	}
	//후기 수 출력
	
	public Integer reviewCount()
	{
		getConnection();
		sql = "select count(*) from safereview";
		Integer result = 0;
			
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} 
		catch (SQLException e) 
		{
				
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return result;
	}
	
}
