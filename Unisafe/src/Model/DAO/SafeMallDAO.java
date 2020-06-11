package Model.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import Model.DTO.SafeMallDTO;
import Model.DTO.SafeStockDTO;

public class SafeMallDAO extends DataBaseInfo
{
	final String COLUMNS = "GOODS_SEQ,GOODS_NUM,USER_ID,GOODS_NAME,GOODS_PRICE,GOODS_QTY,GOODS_CONTENT,GOODS_IMAGE,GOODS_IMAGE1,GOODS_IMAGE2,GOODS_IMAGE3,GOODS_REGIST,GOODS_VISIT,GOODS_KIND";
	
	//상품 등록하기
	public void insertGoods(SafeMallDTO dto)
	{
		getConnection();
		sql = "INSERT INTO SAFEGOODS ("+ COLUMNS+ ") VALUES (GOODS_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?,SYSDATE,0,?)";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getGoodsNum());
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3, dto.getGoodsName());
			pstmt.setInt(4, dto.getGoodsPrice());
			pstmt.setInt(5, dto.getGoodsQty());
			pstmt.setString(6, dto.getGoodsContent());
			pstmt.setString(7, dto.getGoodsImage());
			pstmt.setString(8, dto.getGoodsImage1());
			pstmt.setString(9, dto.getGoodsImage2());
			pstmt.setString(10, dto.getGoodsImage3());
			pstmt.setString(11, dto.getGoodsKind());
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
	//육포류 카테고리 리스트 출력하기
	public List jerkyAllSelect()
	{
		List list = new ArrayList();
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEGOODS WHERE GOODS_KIND = ? ORDER BY GOODS_SEQ DESC"; 
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"meat");
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				SafeMallDTO dto = new SafeMallDTO();
				dto.setGoodsSeq(rs.getString("GOODS_SEQ"));
				dto.setGoodsNum(rs.getString("GOODS_NUM"));
				dto.setUserId(rs.getString("USER_ID"));
				dto.setGoodsName(rs.getString("GOODS_NAME"));
				dto.setGoodsPrice(rs.getInt("GOODS_PRICE"));
				dto.setGoodsQty(rs.getInt("GOODS_QTY"));
				dto.setGoodsContent(rs.getString("GOODS_CONTENT"));
				dto.setGoodsImage(rs.getString("GOODS_IMAGE"));
				dto.setGoodsImage1(rs.getString("GOODS_IMAGE1"));
				dto.setGoodsImage2(rs.getString("GOODS_IMAGE2"));
				dto.setGoodsImage3(rs.getString("GOODS_IMAGE3"));
				dto.setGoodsRegister(rs.getTimestamp("GOODS_REGIST"));
				dto.setGoodsVisit(rs.getInt("GOODS_VISIT"));
				dto.setGoodsKind(rs.getString("GOODS_KIND"));
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
	//육포류 갯수
	public Integer jerkyCount()
	{
		Integer result = 0;
		getConnection();
		sql = "SELECT COUNT(*) FROM SAFEGOODS WHERE GOODS_KIND = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"meat");
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//뼈간식류 리스트 출력하기
	public List bonesAllSelect()
	{
		List list = new ArrayList();
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEGOODS WHERE GOODS_KIND = ? ORDER BY GOODS_SEQ DESC"; 
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"bones");
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				SafeMallDTO dto = new SafeMallDTO();
				dto.setGoodsSeq(rs.getString("GOODS_SEQ"));
				dto.setGoodsNum(rs.getString("GOODS_NUM"));
				dto.setUserId(rs.getString("USER_ID"));
				dto.setGoodsName(rs.getString("GOODS_NAME"));
				dto.setGoodsPrice(rs.getInt("GOODS_PRICE"));
				dto.setGoodsQty(rs.getInt("GOODS_QTY"));
				dto.setGoodsContent(rs.getString("GOODS_CONTENT"));
				dto.setGoodsImage(rs.getString("GOODS_IMAGE"));
				dto.setGoodsImage1(rs.getString("GOODS_IMAGE1"));
				dto.setGoodsImage2(rs.getString("GOODS_IMAGE2"));
				dto.setGoodsImage3(rs.getString("GOODS_IMAGE3"));
				dto.setGoodsRegister(rs.getTimestamp("GOODS_REGIST"));
				dto.setGoodsVisit(rs.getInt("GOODS_VISIT"));
				dto.setGoodsKind(rs.getString("GOODS_KIND"));
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
	//뼈간식류 갯수
	public Integer bonesCount()
	{
		Integer result = 0;
		getConnection();
		sql = "SELECT COUNT(*) FROM SAFEGOODS WHERE GOODS_KIND = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"bones");
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//악세서리 리스트 출력하기
	public List accessoryAllSelect()
	{
		List list = new ArrayList();
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEGOODS WHERE GOODS_KIND = ? ORDER BY GOODS_SEQ DESC"; 
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"accessory");
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				SafeMallDTO dto = new SafeMallDTO();
				dto.setGoodsSeq(rs.getString("GOODS_SEQ"));
				dto.setGoodsNum(rs.getString("GOODS_NUM"));
				dto.setUserId(rs.getString("USER_ID"));
				dto.setGoodsName(rs.getString("GOODS_NAME"));
				dto.setGoodsPrice(rs.getInt("GOODS_PRICE"));
				dto.setGoodsQty(rs.getInt("GOODS_QTY"));
				dto.setGoodsContent(rs.getString("GOODS_CONTENT"));
				dto.setGoodsImage(rs.getString("GOODS_IMAGE"));
				dto.setGoodsImage1(rs.getString("GOODS_IMAGE1"));
				dto.setGoodsImage2(rs.getString("GOODS_IMAGE2"));
				dto.setGoodsImage3(rs.getString("GOODS_IMAGE3"));
				dto.setGoodsRegister(rs.getTimestamp("GOODS_REGIST"));
				dto.setGoodsVisit(rs.getInt("GOODS_VISIT"));
				dto.setGoodsKind(rs.getString("GOODS_KIND"));
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
	//악세서리 갯수 출력하기
	public Integer accessoryCount()
	{
		Integer result = 0;
		getConnection();
		sql = "SELECT COUNT(*) FROM SAFEGOODS WHERE GOODS_KIND = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"accessory");
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//메인페이지 상품 출력하기
	public List goodsAllSelect()
	{
		List list = new ArrayList();
		getConnection();
		sql = "SELECT "+COLUMNS+" FROM SAFEGOODS ORDER BY GOODS_SEQ DESC";
		//System.out.println(sql);
		try 
		{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				SafeMallDTO dto = new SafeMallDTO();
				dto.setGoodsSeq(rs.getString("GOODS_SEQ"));
				dto.setGoodsNum(rs.getString("GOODS_NUM"));
				dto.setUserId(rs.getString("USER_ID"));
				dto.setGoodsName(rs.getString("GOODS_NAME"));
				dto.setGoodsPrice(rs.getInt("GOODS_PRICE"));
				dto.setGoodsQty(rs.getInt("GOODS_QTY"));
				dto.setGoodsContent(rs.getString("GOODS_CONTENT"));
				dto.setGoodsImage(rs.getString("GOODS_IMAGE"));
				dto.setGoodsImage1(rs.getString("GOODS_IMAGE1"));
				dto.setGoodsImage2(rs.getString("GOODS_IMAGE2"));
				dto.setGoodsImage3(rs.getString("GOODS_IMAGE3"));
				dto.setGoodsRegister(rs.getTimestamp("GOODS_REGIST"));
				dto.setGoodsVisit(rs.getInt("GOODS_VISIT"));
				dto.setGoodsKind(rs.getString("GOODS_KIND"));
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
	//상품 상세보기
	public SafeMallDTO goodsDetailSelect(String goodsSeq)
	{
		SafeMallDTO dto = new SafeMallDTO();
		getConnection();
		sql = "SELECT " + COLUMNS + " FROM SAFEGOODS WHERE GOODS_SEQ = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,goodsSeq);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setGoodsSeq(rs.getString("GOODS_SEQ"));
				dto.setGoodsNum(rs.getString("GOODS_NUM"));
				dto.setUserId(rs.getString("USER_ID"));
				dto.setGoodsName(rs.getString("GOODS_NAME"));
				dto.setGoodsPrice(rs.getInt("GOODS_PRICE"));
				dto.setGoodsQty(rs.getInt("GOODS_QTY"));
				dto.setGoodsContent(rs.getString("GOODS_CONTENT"));
				dto.setGoodsImage(rs.getString("GOODS_IMAGE"));
				dto.setGoodsImage1(rs.getString("GOODS_IMAGE1"));
				dto.setGoodsImage2(rs.getString("GOODS_IMAGE2"));
				dto.setGoodsImage3(rs.getString("GOODS_IMAGE3"));
				dto.setGoodsRegister(rs.getTimestamp("GOODS_REGIST"));
				dto.setGoodsVisit(rs.getInt("GOODS_VISIT"));
				dto.setGoodsKind(rs.getString("GOODS_KIND"));
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
	//상품 수정하기
	public void goodsUpdate(SafeMallDTO dto)
	{
		getConnection();
		sql = "UPDATE SAFEGOODS SET GOODS_PRICE = ? ,GOODS_QTY = ?,GOODS_CONTENT = ?,USER_ID = ? WHERE GOODS_SEQ = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,dto.getGoodsPrice());
			pstmt.setInt(2, dto.getGoodsQty());
			pstmt.setString(3, dto.getGoodsContent());
			pstmt.setString(4, dto.getUserId());
			pstmt.setString(5, dto.getGoodsSeq());
			pstmt.executeUpdate();		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
	}
	//이미지 수정하기
	public void goodsFileUpdate(SafeMallDTO dto)
	{
		getConnection();
		sql = "UPDATE SAFEGOODS SET GOODS_PRICE = ? ,GOODS_QTY = ?,GOODS_CONTENT = ?,USER_ID = ?,GOODS_IMAGE = ?,GOODS_IMAGE1 = ?,GOODS_IMAGE2 = ? WHERE GOODS_SEQ = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,dto.getGoodsPrice());
			pstmt.setInt(2, dto.getGoodsQty());
			pstmt.setString(3, dto.getGoodsContent());
			pstmt.setString(4, dto.getUserId());
			pstmt.setString(5, dto.getGoodsImage());
			pstmt.setString(6, dto.getGoodsImage1());
			pstmt.setString(7, dto.getGoodsImage2());
			pstmt.setString(8, dto.getGoodsSeq());
			pstmt.executeUpdate();		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			close();
		}
	}
	//상품 삭제
	public void goodsDelete(String goodsSeq)
	{
		getConnection();
		sql = "DELETE FROM SAFEGOODS WHERE GOODS_SEQ = ?";
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, goodsSeq);
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
	//결제시 상품 수량 빼기
	public void updateGoodsQty(String goodsQty,String goodsSeq)
	{
		getConnection();
		sql = "UPDATE SAFEGOODS SET GOODS_QTY = GOODS_QTY - ? WHERE GOODS_SEQ = ?";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,goodsQty);
			pstmt.setString(2, goodsSeq);
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
	//재고 관리
	public List stockSelect()
	{
		getConnection();
		sql = "SELECT A.GOODS_SEQ, MAX(A.GOODS_QTY) - SUM(B.GOODS_QTY)  FROM SAFEGOODS A ,SAFEBUY B  WHERE A.GOODS_SEQ = B.GOODS_SEQ GROUP BY A.GOODS_SEQ";
		List list = new ArrayList();
		try 
		{
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				SafeStockDTO dto = new SafeStockDTO();
				dto.setGoodsSeq(rs.getInt(1));
				dto.setGoodsStock(rs.getInt(2));
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
	
	//상세 페이지 재고관리
	public String stockOneSelect(String goodsSeq)
	{
		getConnection();
		sql = "SELECT A.GOODS_SEQ, MAX(A.GOODS_QTY) - SUM(B.GOODS_QTY)  FROM SAFEGOODS A ,SAFEBUY B  WHERE A.GOODS_SEQ = B.GOODS_SEQ GROUP BY A.GOODS_SEQ HAVING A.GOODS_SEQ = ?";
		String stock = "";
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,goodsSeq);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				stock = rs.getString(2);
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
		return stock;
		
	}
	
	
}
