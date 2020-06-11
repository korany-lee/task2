package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.SafeQnADTO;

public class SafeQnADAO extends DataBaseInfo
{
	final String COLUMNS = "QNA_NUM,USER_ID,USER_NAME,QNA_PASS,QNA_SUBJECT,QNA_CONTENT,QNA_DATE";
	//qna등록
	public void insertQnA(SafeQnADTO dto)
	{
		getConnection();
		sql = "INSERT INTO SAFEQNA ( "+COLUMNS+") VALUES(QNA_SEQ.NEXTVAL,?,?,?,?,?,SYSDATE)";
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getUserName());
			pstmt.setString(3, dto.getQnaPass());
			pstmt.setString(4, dto.getQnaSubject());
			pstmt.setString(5, dto.getQnaContent());
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
	
	//리스트에 qna출력
	public List qnaAllSelect(int page,int limit)
	{
		int startRow = (page-1) * limit +1;
		int endRow = startRow + limit -1;
		List list = new ArrayList();
		getConnection();
		sql = "SELECT * FROM (SELECT ROWNUM RN, "+COLUMNS+" FROM SAFEQNA ) WHERE RN >=? AND RN < = ? ORDER BY QNA_NUM DESC";
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeQnADTO dto = new SafeQnADTO();
				dto.setQnaNum(rs.getInt(2));
				dto.setUserId(rs.getString(3));
				dto.setUserName(rs.getString(4));
				dto.setQnaPass(rs.getString(5));
				dto.setQnaSubject(rs.getString(6));
				dto.setQnaContent(rs.getString(7));
				dto.setQnaDate(rs.getTimestamp(8));
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
	//qna상세보기
	public SafeQnADTO qnaOneSelect(String qnaNum)
	{
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEQNA WHERE QNA_NUM = ?";
		SafeQnADTO dto = new SafeQnADTO();
		try 
		{
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,qnaNum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setQnaNum(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setQnaPass(rs.getString(4));
				dto.setQnaSubject(rs.getString(5));
				dto.setQnaContent(rs.getString(6));
				dto.setQnaDate(rs.getTimestamp(7));
			}
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return dto;
	}
	//qna수정하기
	public Integer qnaModify(SafeQnADTO dto)
	{
		getConnection();
		sql = "UPDATE SAFEQNA SET USER_NAME = ?,QNA_SUBJECT = ?,QNA_CONTENT = ? WHERE QNA_NUM = ? AND QNA_PASS = ?";
		Integer result = 0;
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUserName());
			pstmt.setString(2, dto.getQnaSubject());
			pstmt.setString(3, dto.getQnaContent());
			pstmt.setInt(4, dto.getQnaNum());
			pstmt.setString(5, dto.getQnaPass());
			result = pstmt.executeUpdate();
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
	//qna삭제하기
	public Integer qnaDelete(String qnaNum,String qnaPass)
	{
		getConnection();
		sql = "DELETE FROM SAFEQNA WHERE QNA_NUM = ? AND QNA_PASS = ?";
		Integer result = 0;
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qnaNum);
			pstmt.setString(2, qnaPass);
			result = pstmt.executeUpdate();
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
	//문의 수 출력
	public Integer qnaCount()
	{
		getConnection();
		sql = "select count(*) from safeqna";
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
