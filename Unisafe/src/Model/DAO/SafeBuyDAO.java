package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import Model.DTO.SafeBuyDTO;
import Model.DTO.SafeCartDTO;

public class SafeBuyDAO extends DataBaseInfo 
{
	final String COLUMNS = "ORDER_NUM,GOODS_SEQ,GOODS_NAME,GOODS_PRICE,GOODS_QTY,GOODS_IMAGE,USER_NAME,USER_PH,USER_ID,USER_ADDR,USER_DETAILADDR,USER_POSTCODE,USER_MEMO,BUY_DATE";
	//구매 테이블 내용 추가
	public void safeBuyInsert(SafeCartDTO dto,SafeBuyDTO buy)
	{
		getConnection();
		sql = "INSERT INTO SAFEBUY("+COLUMNS+") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,SYSDATE)";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, buy.getOrderNum());
			pstmt.setString(2, dto.getGoodsSeq());
			pstmt.setString(3, dto.getGoodsName());
			pstmt.setInt(4, dto.getGoodsPrice());
			pstmt.setInt(5, dto.getQty());
			pstmt.setString(6, dto.getGoodsImage());
			pstmt.setString(7, buy.getUserName());
			pstmt.setString(8, buy.getUserPh());
			pstmt.setString(9, buy.getUserId());
			pstmt.setString(10, buy.getUserAddr());
			pstmt.setString(11, buy.getUserDetailAddr());
			pstmt.setString(12, buy.getUserPostCode());
			pstmt.setString(13, buy.getUserMemo());
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
	//주문자 정보 결제창에 출력
	public SafeBuyDTO userOneSelect(String orderNum)
	{
		SafeBuyDTO dto = new SafeBuyDTO();
		
		getConnection();
		sql = "SELECT USER_NAME,USER_PH,USER_DETAILADDR,USER_POSTCODE,USER_ADDR,USER_MEMO,GOODS_QTY,GOODS_SEQ,ORDER_NUM FROM SAFEBUY WHERE ORDER_NUM = ? ORDER BY BUY_DATE DESC";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,orderNum);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setUserName(rs.getString(1));
				dto.setUserPh(rs.getString(2));
				dto.setUserDetailAddr(rs.getString(3));
				dto.setUserPostCode(rs.getString(4));
				dto.setUserAddr(rs.getString(5));
				dto.setUserMemo(rs.getString(6));
				dto.setGoodsQty(rs.getString(7));
				dto.setGoodsSeq(rs.getString(8));
				dto.setOrderNum(rs.getString(9));
			}
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dto;
	}

	
	//결제 창에 상품 출력
	public List buyList(String orderNum)
	{
		List list  = new ArrayList();
		getConnection();
		sql = "SELECT GOODS_NAME,GOODS_PRICE,GOODS_QTY,GOODS_IMAGE FROM SAFEBUY WHERE ORDER_NUM = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orderNum);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeBuyDTO dto = new SafeBuyDTO();
				dto.setGoodsName(rs.getString(1));
				dto.setGoodsPrice(rs.getString(2));
				dto.setGoodsQty(rs.getString(3));
				dto.setGoodsImage(rs.getString(4));
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
	//사용자 구매 내역 리스트
	public List buyAllSelect(String userId,int page,int limit)
	{
		List list = new ArrayList();
		int startRow = (page-1) * limit +1;
		int endRow = startRow + limit -1;
		getConnection();
		sql = "SELECT * FROM (SELECT ROWNUM RN, "+ COLUMNS + " FROM SAFEBUY WHERE USER_ID = ?)WHERE RN >=? AND RN < = ? ORDER BY BUY_DATE DESC";
		try 
		{
			System.out.println("구매내역에서 출력한 userId:"+userId);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeBuyDTO dto = new SafeBuyDTO();
				dto.setOrderNum(rs.getString(2));
				dto.setGoodsSeq(rs.getString(3));
				dto.setGoodsName(rs.getString(4));
				dto.setGoodsPrice(rs.getString(5));
				dto.setGoodsQty(rs.getString(6));
				dto.setGoodsImage(rs.getString(7));
				dto.setUserName(rs.getString(8));
				dto.setUserPh(rs.getString(9));
				dto.setUserId(rs.getString(10));
				dto.setUserAddr(rs.getString(11));
				dto.setUserDetailAddr(rs.getString(12));
				dto.setUserPostCode(rs.getString(13));
				dto.setUserMemo(rs.getString(14));
				dto.setBuyDate(rs.getTimestamp(15));
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
	//판매 현황 보기
	public List sellAllSelect(int page,int limit)
	{
		List list = new ArrayList();
		int startRow = (page-1) * limit +1;
		int endRow = startRow + limit -1;
		getConnection();
		sql = "SELECT * FROM (SELECT ROWNUM RN, "+ COLUMNS + " FROM SAFEBUY)WHERE RN >=? AND RN < = ? ORDER BY BUY_DATE DESC";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeBuyDTO dto = new SafeBuyDTO();
				dto.setOrderNum(rs.getString(2));
				dto.setGoodsSeq(rs.getString(3));
				dto.setGoodsName(rs.getString(4));
				dto.setGoodsPrice(rs.getString(5));
				dto.setGoodsQty(rs.getString(6));
				dto.setGoodsImage(rs.getString(7));
				dto.setUserName(rs.getString(8));
				dto.setUserPh(rs.getString(9));
				dto.setUserId(rs.getString(10));
				dto.setUserAddr(rs.getString(11));
				dto.setUserDetailAddr(rs.getString(12));
				dto.setUserPostCode(rs.getString(13));
				dto.setUserMemo(rs.getString(14));
				dto.setBuyDate(rs.getTimestamp(15));
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
	//판매 수
	public Integer sellCount()
	{
		Integer result = 0;
		getConnection();
		sql = "SELECT COUNT(*) FROM SAFEBUY";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = rs.getInt(1);
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
		return result;
		
	}
	//구매수
	public Integer buyCount(String userId)
	{
		Integer result = 0;
		getConnection();
		sql = "SELECT COUNT(*) FROM SAFEBUY WHERE USER_ID = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = rs.getInt(1);
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
		return result;
		
	}
	
}
