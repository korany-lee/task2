package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.BoardDTO;

public class BoardDAO extends DataBaseInfo {
	final String columns ="BOARD_NUM, USER_ID, BOARD_PASS, "
            + " BOARD_SUBJECT, BOARD_CONTENT, BOARD_DATE, "
            + " IP_ADDR, READ_COUNT, original_file_name, "
            + " store_file_name ";
	

	
	public void plusReadcount(int num) {
		getConnection();
		sql = "update review set read_count = read_count + 1 where board_num = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public int boardDelete(BoardDTO dto) {
		int i = 0;
		getConnection();
		sql = "delete from review where board_num = ? and board_pass= ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, dto.getBoardNum());
			pstmt.setString(2, dto.getBoardPass());
			i = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return i;
	}
	public void boardUpdate(BoardDTO dto) {
		getConnection();
		sql = "update review set board_subject = ?, board_content=? where board_num = ? and board_pass= ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getBoardSubject());
			pstmt.setString(2, dto.getBoardContent());
			pstmt.setInt(3, dto.getBoardNum());
			pstmt.setString(4, dto.getBoardPass());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	public BoardDTO boardOneselect(String boardNum) {
		BoardDTO dto = new BoardDTO();
		getConnection();
		sql = " select  " + columns + " from review where board_num = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardNum);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setBoardNum(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setBoardPass(rs.getString(3));
				dto.setBoardSubject(rs.getString(4));
				dto.setBoardContent(rs.getString(5));
				dto.setBoardDate(rs.getTimestamp(6));
				dto.setIpAddr(rs.getString(7));
				dto.setReadCount(rs.getInt(8));
				dto.setOriginalfileName(rs.getString(9));
				dto.setStoreFileName(rs.getString(10));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	public Integer boardCount() {
		Integer result = 0;
		getConnection();
		sql = "select count(*) from review";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
	}
	public List<BoardDTO> boardAllSelect(Integer page, int limit) {
		int startRow = (page - 1) * limit + 1;
	    int endRow = startRow + limit - 1;
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		getConnection();
		sql = "select * from (select rownum rn, " + columns + " from (select " + columns + " from review order by board_num desc)) where rn between ? and ?";
		System.out.println("board all select sql: "+sql);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs =  pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto= new BoardDTO();
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setUserId(rs.getString(3));
				dto.setBoardPass(rs.getString(4));
				dto.setBoardSubject(rs.getString(5));
				dto.setBoardContent(rs.getString(6));
				dto.setBoardDate(rs.getTimestamp(7));
				dto.setIpAddr(rs.getString(8));
				dto.setReadCount(rs.getInt(9));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public void boardInsert(BoardDTO dto) {
		getConnection();
		String subquery = 
				"select nvl(max(board_num),0)+1 from review";
		sql = "insert into review (" + columns + ") "
				+ " values (("+ subquery +"),?,?,?,?,?,default,0,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getBoardPass());
			pstmt.setString(3, dto.getBoardSubject());
			pstmt.setString(4, dto.getBoardContent());
			pstmt.setString(5, dto.getIpAddr());
			pstmt.setString(6, dto.getOriginalfileName());
			pstmt.setString(7, dto.getStoreFileName());
			pstmt.executeUpdate();
		} catch (SQLException e) {	
			e.printStackTrace();
		} finally {
			close();
		}
	}
}