package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.ReservationDTO;

public class ReservationDAO extends DataBaseInfo {

	
	public ReservationDTO selectMyReserv(String userId) {
		ReservationDTO dto = new ReservationDTO();
		
		getConnection();
		sql = "select ani_num, res_time, res_date, ani_img, user_id, user_ph, ani_name, user_name, res_num from reservation where user_id = ? order by res_num desc";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setAniNum(rs.getString("ani_num"));
				dto.setAniName(rs.getString("ani_name"));
				dto.setResTime(rs.getString("res_time"));
				dto.setResDate(rs.getString("res_date"));
				dto.setAniImage(rs.getString("ani_img"));
				dto.setUserPh(rs.getString("user_ph"));
				dto.setUserName(rs.getString("user_name"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return dto;
		
		
	}
	public void InsertReserv(ReservationDTO dto) {
		getConnection();
		sql="insert into reservation (ani_num, res_time, res_date, ani_img, user_id, user_ph, ani_name, user_name, res_num) values(?,?,?,?,?,?,?,?,res_seq.nextval)";
		System.out.println(sql);
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getAniNum());
			pstmt.setString(2, dto.getResTime());
			pstmt.setString(3, dto.getResDate());
			pstmt.setString(4, dto.getAniImage());
			pstmt.setString(5, dto.getUserId());
			pstmt.setString(6, dto.getUserPh());
			pstmt.setString(7, dto.getAniName());
			pstmt.setString(8, dto.getUserName());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		
	}
	
	public List reservationList() {
		List list = new ArrayList();
		getConnection();
		sql = "select user_id,user_name,res_date,res_num,user_ph,ani_name,ani_num,ani_img from STUDY.RESERVATION";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReservationDTO dto = new ReservationDTO();
				dto.setUserId(rs.getString(1));
				dto.setUserName(rs.getString(2));
				dto.setResDate(rs.getString(3));
				dto.setResNum(rs.getInt(4));
				dto.setUserPh(rs.getString(5));
				dto.setAniName(rs.getString(6));
				dto.setAniNum(rs.getString(7));
				dto.setAniImage(rs.getString(8));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public void resDel(String aniNum) {
		getConnection();
		sql = "delete FROM STUDY.RESERVATION where ani_num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, aniNum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
