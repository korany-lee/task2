package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.MemberDTO;

public class MemberDAO extends DataBaseInfo {
	final String Columns = "USER_ID, USER_PW, USER_NAME, USER_PH, USER_EMAIL, USER_BIRTH, USER_REGIST";
	
	
	//동물 입양 예약페이지에서 회원정보 불러오기
		public MemberDTO ResevMem(String userId) {
			MemberDTO mem = new MemberDTO();
			getConnection();
			sql = "select user_name, user_ph from unimem where user_id=?";
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				rs = pstmt.executeQuery();
				if(rs.next()){
					mem.setUserName(rs.getString("user_name"));
					mem.setUserPh(rs.getString("user_ph"));	
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return mem;
		}
	
	public Integer memberJoin(MemberDTO dto) {
		Integer result = null;
		getConnection();
		sql = "INSERT INTO UNIMEM (" + Columns + ",counter,b_chk) VALUES(?,?,?,?,?,?,sysdate,1,0)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getUserPw());
			pstmt.setString(3, dto.getUserName());
			pstmt.setString(4, dto.getUserPh());
			pstmt.setString(5, dto.getUserEmail());
			pstmt.setTimestamp(6, dto.getUserBirth());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public String selectId(String userId) {
		String result = null;
		getConnection();
		sql = "select user_id from unimem where user_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getString("user_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public String memberJoinOk(String userEmail) {
		String joinOk = null;
		getConnection();
		sql = "select join_ok from unimem where user_email=? and join_ok is null";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userEmail);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				joinOk = "t";
			} else {
				joinOk = "f";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return joinOk;
	}
	
	public void joinOkUpdate(String num, String userEmail) {
		getConnection();
		sql = "update unimem set join_ok=? where user_email=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.setString(2, userEmail);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public Integer userLogin(String userId, String userPw) {
		Integer result = null;
		getConnection();
		sql = "select user_pw from unimem where user_id=? and join_ok is not null";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String dbPw = rs.getString("user_pw");
				String mgId = "manager";
				if(userPw.equals(dbPw)) {
					result = 1; //로그인 됨
					if(userId.equals(mgId)) {
						result = 2; //관리자 로그인
					}
				} else {
					result = 0; //비밀번호 틀림
				} 
			} else {
				result = -1; //아이디 없음 또는 join_ok가 없음(메일확인 안함)
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}
	
	public Integer managerLogin(String managerId, String managerPw) {
		Integer result = null;
		getConnection();
		sql = "select manager_pw from study.MANAGER m where manager_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, managerId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String dbPw = rs.getString("manager_pw");
				if(managerPw.equals(dbPw)) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	
	public Integer userPwChk(String userId, String userPw) {
		Integer result = null;
		getConnection();
		sql = "select user_id from unimem where user_id=? and user_pw=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			} else {
				result = 0;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	public MemberDTO memberOneSelect(String userId)
	{
		MemberDTO dto = new MemberDTO();
		getConnection();
		sql = "SELECT "+ Columns +" FROM UNIMEM WHERE USER_ID = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userId);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setUserId(rs.getString(1));
				dto.setUserPw(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setUserPh(rs.getString(4));
				dto.setUserEmail(rs.getString(5));
				dto.setUserBirth(rs.getTimestamp(6));
				dto.setUserRegist(rs.getTimestamp(7));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			close();
		}
		return dto;
	}
	
	public void userModifyProAction(String userId, String userPh, String userEmail) {
		getConnection();
		sql = "UPDATE UNIMEM SET USER_PH=?, USER_EMAIL=? WHERE USER_ID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userPh);
			pstmt.setString(2, userEmail);
			pstmt.setString(3, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public void pwModify(String newPw, String userId) {
		getConnection();
		sql = "update unimem set user_pw=? where user_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPw);
			pstmt.setString(2, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public List userAllSelect() {
		List list = new ArrayList();
		getConnection();
		sql = "select " + Columns + " from unimem where b_chk='0'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setUserId(rs.getString(1));
				dto.setUserPw(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setUserPh(rs.getString(4));
				dto.setUserEmail(rs.getString(5));
				dto.setUserBirth(rs.getTimestamp(6));
				dto.setUserRegist(rs.getTimestamp(7));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public Integer userCount() {
		Integer result = 0;
		getConnection();
		sql = "select count(*) from unimem where b_chk='0'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public MemberDTO managerSelectUser(String userId) {
		getConnection();
		MemberDTO dto = new MemberDTO();
		sql = "select " + Columns + " from unimem where user_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setUserId(rs.getString(1));
				dto.setUserPw(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setUserPh(rs.getString(4));
				dto.setUserEmail(rs.getString(5));
				dto.setUserBirth(rs.getTimestamp(6));
				dto.setUserRegist(rs.getTimestamp(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	public void userSelfDel(String userId) {
		getConnection();
		sql = "delete from unimem where user_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
		}
	}
	
	public void addBlackList(String userId) {
		getConnection();
		sql = "UPDATE STUDY.UNIMEM SET B_CHK='1' WHERE USER_ID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public String blackListChk(String userId) {
		String result = null;
		getConnection();
		sql = "select b_chk from unimem where user_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				System.out.println("rs.getString(1) : " + rs.getString(1));
				if((rs.getString(1)).equals("1")) {
					result = "T";	//블랙리스트에 추가된 계정
				} else {
					result = "F";	//블랙리스트에 없는계정(로그인 가능)
				}
			} else {
				result = "F";	// 아이디가 존재하지않아서 b_chk가 null이라 F를 넘거줌
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public MemberDTO insertChart() {
		MemberDTO dto = new MemberDTO();
		getConnection();
		sql = "SELECT * \r\n" + 
				"FROM (\r\n" + 
				"   SELECT counter , TO_CHAR(USER_REGIST,'YYYY.MM') AAAAAA FROM unimem\r\n" + 
				"   )\r\n" + 
				"   PIVOT\r\n" + 
				"(\r\n" + 
				"    SUM(counter) \r\n" + 
				"    FOR\r\n" + 
				"    AAAAAA IN ( '2019.09','2019.10','2019.11','2019.12','2020.01','2020.02' )\r\n" + 
				")";
		System.out.println("sql : " + sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setM9(rs.getString(1));
				dto.setM10(rs.getString(2));
				dto.setM11(rs.getString(3));
				dto.setM12(rs.getString(4));
				dto.setM1(rs.getString(5));
				dto.setM2(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	public List blackListAllSelect() {
		List list = new ArrayList();
		getConnection();
		sql = "select * from unimem where b_chk='1'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setUserId(rs.getString(1));
				dto.setUserPw(rs.getString(2));
				dto.setUserName(rs.getString(3));
				dto.setUserBirth(rs.getTimestamp(4));
				dto.setUserPh(rs.getString(5));
				dto.setUserRegist(rs.getTimestamp(6));
				dto.setUserEmail(rs.getString(7));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public Integer blackListCount() {
		getConnection();
		Integer result = null;
		sql = "select count(*) from unimem where b_chk='1'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public void blackListDel(String userId) {
		getConnection();
		sql = "UPDATE STUDY.UNIMEM SET B_CHK='0' WHERE USER_ID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
	}
}





















