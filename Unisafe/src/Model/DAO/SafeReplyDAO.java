package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.SafeReplyDTO;

public class SafeReplyDAO extends DataBaseInfo
{
	final String COLUMNS = "REPLY_NUM,QNA_NUM,USER_ID,REPLY_SUBJECT,REPLY_CONTENT,REPLY_DATE,USER_NAME";
	
	public void insertReply(SafeReplyDTO dto)
	{
		getConnection();
		sql = "INSERT INTO SAFEREPLY("+COLUMNS+")VALUES(REPLY_SEQ.NEXTVAL,?,?,?,?,SYSDATE,?)";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getQnaNum());
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3,dto.getReplySubject());
			pstmt.setString(4, dto.getReplyContent());
			pstmt.setString(5, dto.getUserName());
			pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			close();
		}	
	}
	public List replyOneSelect(String qnaNum)
	{
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEREPLY WHERE QNA_NUM = ?";
		List list = new ArrayList();
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qnaNum);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeReplyDTO dto = new SafeReplyDTO();
				dto.setReplyNum(rs.getInt(1));
				dto.setQnaNum(rs.getInt(2));
				dto.setUserId(rs.getString(3));
				dto.setReplySubject(rs.getString(4));
				dto.setReplyContent(rs.getString(5));
				dto.setReplyDate(rs.getTimestamp(6));
				dto.setUserName(rs.getString(7));
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
	//답변 상세보기
	public SafeReplyDTO replyDetailSelect(String replyNum)
	{
		getConnection();
		sql = "SELECT "+COLUMNS+ " FROM SAFEREPLY WHERE REPLY_NUM = ?";
		SafeReplyDTO dto = new SafeReplyDTO();
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, replyNum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				
				
				dto.setReplyNum(rs.getInt(1));
				dto.setQnaNum(rs.getInt(2));
				dto.setUserId(rs.getString(3));
				dto.setReplySubject(rs.getString(4));
				dto.setReplyContent(rs.getString(5));
				dto.setReplyDate(rs.getTimestamp(6));
				dto.setUserName(rs.getString(7));
				
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
	//답변 수정하기
	public void replyModify(SafeReplyDTO dto)
	{
		getConnection();
		sql = "UPDATE SAFEREPLY SET USER_NAME = ?,REPLY_SUBJECT = ?,REPLY_CONTENT = ? WHERE REPLY_NUM = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserName());
			pstmt.setString(2, dto.getReplySubject());
			pstmt.setString(3, dto.getReplyContent());
			pstmt.setInt(4, dto.getReplyNum());
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
	//답변 삭제하기
	public void replyDelete(String replyNum)
	{
		getConnection();
		sql = "DELETE FROM SAFEREPLY WHERE REPLY_NUM = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, replyNum);
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
}
