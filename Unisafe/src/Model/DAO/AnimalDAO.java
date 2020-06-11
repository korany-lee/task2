package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DTO.AnimalDTO;

public class AnimalDAO extends DataBaseInfo {
	String sql;
	final String colums = "species,ani_num,ani_name,ani_age,ani_gender,race,"
			+ "ani_birth,ani_size,since_date,ani_char,fur_type";
	final String column2 = " ani_name,species,gender_m,style_m,family_m,kid_m,other_m,past_m,"
			+ "stay_home_m,where_home_m,what_home_m,allergy_m,store_file_name,ani_num ";
	final String colums3 =",gender_m,style_m,family_m,kid_m,other_m,past_m,stay_home_m,"
			+ "where_home_m,what_home_m,allergy_m";

	//예약한 친구 불러오기
	public AnimalDTO ReservAni(String aniNum) {
		AnimalDTO ani = new AnimalDTO();
		getConnection();

		sql = "select ani_name, store_file_name, ani_num from ani where ani_num = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  aniNum);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ani.setAniName(rs.getString("ani_name"));
				ani.setStoreFileName(rs.getString("store_file_name"));
				ani.setAniNum(rs.getString("ani_num"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return ani;
	}

	//상세 본 친구 수정하기
	public void AnimalModifyUpdate(AnimalDTO ani) {
		getConnection();
		sql = "update ani set ani_char=?,ani_gender=?,race=?,ani_size=?,ani_birth=?"
				+ " where ani_num=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ani.getAniChar());
			pstmt.setString(2, ani.getAniGender());
			pstmt.setString(3, ani.getRace());
			pstmt.setString(4, ani.getAniSize());
			pstmt.setString(5, ani.getAniBirth());
			pstmt.setString(6, ani.getAniNum());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}

	}


	//클릭해서 상세보기!
	public AnimalDTO OneSelectAni(String aniNum) {
		AnimalDTO ani = new AnimalDTO();
		getConnection();
		sql = "select " + colums
				+ ",store_file_name,store_file_name2,store_file_name3"
				+ " from ani"
				+ " where ani_num = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  aniNum);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ani.setSpecies(rs.getString("species"));
				ani.setAniNum(rs.getString("ani_num"));
				ani.setAniName(rs.getString("ani_name"));
				ani.setAniAge(rs.getString("ani_age"));
				ani.setAniGender(rs.getString("ani_gender"));
				ani.setRace(rs.getString("race"));
				ani.setAniBirth(rs.getString("ani_birth"));
				ani.setAniSize(rs.getString("ani_size"));
				ani.setSinceDate(rs.getTimestamp("since_date"));
				ani.setAniChar(rs.getString("ani_char"));
				ani.setFurType(rs.getString("fur_type"));
				ani.setStoreFileName(rs.getString("store_file_name"));
				ani.setStoreFileName2(rs.getString("store_file_name2"));
				ani.setStoreFileName3(rs.getString("store_file_name3"));
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return ani;	
	}

	//등록된 동물 마리수 세기
	public Integer AniCount() {
		Integer result = 0;
		getConnection();
		sql = "select count(*) from ani";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
	}

	//디테일 페이지를 봐야한다-->DTO로는
	public AnimalDTO AniDetailList(String species) {
		AnimalDTO ani = new AnimalDTO();
		getConnection();

		sql = "select ani_name, ani_num, store_file_name, species"
				+ " from ani"	
				+ " where species = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, species);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ani.setAniName(rs.getString("ani_name"));
				ani.setAniNum(rs.getString("ani_num"));
				ani.setStoreFileName(rs.getString("store_file_name"));
				ani.setSpecies(rs.getString("species"));

			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return ani;
	}

	public List AniList(String species) {
		List list2 = new ArrayList();
		getConnection();

		sql = "select ani_name, ani_num, store_file_name, species"
				+ " from ani"	
				+ " where species = ? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, species);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AnimalDTO dto = new AnimalDTO();
				dto.setSpecies(rs.getString("species"));
				dto.setAniNum(rs.getString("ani_num"));
				dto.setAniName(rs.getString("ani_name"));
				dto.setStoreFileName(rs.getString("store_file_name"));
				list2.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list2;
	}

	//회원들이 보는 페이지에서의 리스트 출력
	public List ListPageAnimal(Integer page, Integer limit, String species, String condition) {
		List list = new ArrayList();
		getConnection();

		int startRow = (page - 1) * limit + 1;
		int endRow = startRow + limit - 1;

		sql = "select *" 
				+ " from (select rownum rn," + colums + ",store_file_name" 
				+ " 	from (select " + colums + ",store_file_name"
				+ " 			from ani where species = ? " + condition
				+ "	order by ani_num desc))"
				+ " where rn >= ? and rn <= ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, species);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				AnimalDTO dto = new AnimalDTO();
				dto.setSpecies(rs.getString("species"));
				dto.setAniNum(rs.getString("ani_num"));
				dto.setAniName(rs.getString("ani_name"));
				dto.setAniAge(rs.getString("ani_age"));
				dto.setAniGender(rs.getString("ani_gender"));
				dto.setRace(rs.getString("race"));
				dto.setAniBirth(rs.getString("ani_birth"));
				dto.setAniSize(rs.getString("ani_size"));
				dto.setSinceDate(rs.getTimestamp("since_date"));
				dto.setAniChar(rs.getString("ani_char"));
				dto.setFurType(rs.getString("fur_type"));
				dto.setStoreFileName(rs.getString("store_file_name"));
				list.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}

	//매칭결과 성별 수컷,암컷 둘중 하나 선택했을때
	public List matchingResult(String animal, String gender, String style, String familly, String kid, String other, String past, String homeStayTime, String whereHome, String whatHome, String allergy) {
		List list = new ArrayList();
		getConnection();
		sql = "select " + column2 + " from ani where species=? and gender_m=? and style_m=? and family_m=? and kid_m=? and other_m=? and past_m=? and stay_home_m=? and where_home_m=? and what_home_m=? and allergy_m=?";
		System.out.println("sql 실행되니: "+sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, animal);
			pstmt.setString(2, gender);
			pstmt.setString(3, style);
			pstmt.setString(4, familly);
			pstmt.setString(5, kid);
			pstmt.setString(6, other);
			pstmt.setString(7, past);
			pstmt.setString(8, homeStayTime);
			pstmt.setString(9, whereHome);
			pstmt.setString(10, whatHome);
			pstmt.setString(11, allergy);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AnimalDTO dto = new AnimalDTO();
				dto.setAniName(rs.getString(1));
				dto.setSpecies(rs.getString(2));	//동물 종류
				dto.setGender(rs.getString(3));
				dto.setStyle(rs.getString(4));
				dto.setFamilly(rs.getString(5));
				dto.setKid(rs.getString(6));
				dto.setOther(rs.getString(7));
				dto.setPast(rs.getString(8));
				dto.setHomeStayTime(rs.getString(9));
				dto.setWhereHome(rs.getString(10));
				dto.setWhatHome(rs.getString(11));
				dto.setAllergy(rs.getString(12));
				dto.setFileName(rs.getString(13));
				dto.setAniNum(rs.getString(14));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

		//매칭결과 성별 상관없음으로 했을때
	   public List matchingResultCon(String animal, String style, String familly, String kid, String other, String past, String homeStayTime, String whereHome, String whatHome, String allergy, String condition) {
	      List list = new ArrayList();
	      getConnection();
	      sql = "select " + column2 + " from study.ani where species=? and style_m=? and family_m=? and kid_m=? and other_m=? and past_m=? and stay_home_m=? and where_home_m=? and what_home_m=? and allergy_m=? " + condition;
	      System.out.println("상관없음 선택시 sql:"+sql);
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, animal);
	         pstmt.setString(2, style);
	         pstmt.setString(3, familly);
	         pstmt.setString(4, kid);
	         pstmt.setString(5, other);
	         pstmt.setString(6, past);
	         pstmt.setString(7, homeStayTime);
	         pstmt.setString(8, whereHome);
	         pstmt.setString(9, whatHome);
	         pstmt.setString(10, allergy);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            AnimalDTO dto = new AnimalDTO();
	            dto.setAniName(rs.getString(1));
	            dto.setSpecies(rs.getString(2));   //동물 종류
	            dto.setGender(rs.getString(3));
	            dto.setStyle(rs.getString(4));
	            dto.setFamilly(rs.getString(5));
	            dto.setKid(rs.getString(6));
	            dto.setOther(rs.getString(7));
	            dto.setPast(rs.getString(8));
	            dto.setHomeStayTime(rs.getString(9));
	            dto.setWhereHome(rs.getString(10));
	            dto.setWhatHome(rs.getString(11));
	            dto.setAllergy(rs.getString(12));
	            dto.setFileName(rs.getString(13));
	            dto.setAniNum(rs.getString(14));
	            list.add(dto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
	      return list;
	   }


	//동물 등록하기
	public Integer AnimalUpdate(AnimalDTO dto) {
		Integer result = 0;
		getConnection();
		sql = "insert into ani(" + colums +",store_file_name,store_file_name2,store_file_name3"+colums3+")"
				+ "values(?,ani_seq.nextval,?,?,?,?,?,?,default,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		System.out.println("insert sql: "+ sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSpecies());
			pstmt.setString(2, dto.getAniName());
			pstmt.setString(3, dto.getAniAge());
			pstmt.setString(4, dto.getAniGender());
			pstmt.setString(5, dto.getRace());
			pstmt.setString(6, dto.getAniBirth());
			pstmt.setString(7, dto.getAniSize());
			pstmt.setString(8, dto.getAniChar());
			pstmt.setString(9, dto.getFurType());
			pstmt.setString(10, dto.getStoreFileName());
			pstmt.setString(11, dto.getStoreFileName2());
			pstmt.setString(12, dto.getStoreFileName3());
			pstmt.setString(13, dto.getGender());
			pstmt.setString(14, dto.getStyle());
			pstmt.setString(15, dto.getFamilly());
			pstmt.setString(16, dto.getKid());
			pstmt.setString(17, dto.getOther());
			pstmt.setString(18, dto.getPast());
			pstmt.setString(19, dto.getHomeStayTime());
			pstmt.setString(20, dto.getWhereHome());
			pstmt.setString(21, dto.getWhatHome());
			pstmt.setString(22, dto.getAllergy());
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {close();}
		return result;
	}
	//예약완료돼서 입양감
	public void aniDel(String aniNum) {
		getConnection();
		sql = "delete from ani where ani_num=?";
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
