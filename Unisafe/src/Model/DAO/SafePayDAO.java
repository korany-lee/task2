package Model.DAO;

import java.sql.SQLException;

import Model.DTO.SafePayDTO;

public class SafePayDAO extends DataBaseInfo 
{
	final String COLUMNS = "PAY_NUM,USER_ID,USER_PH,PAY_DATE,USER_NAME,USER_CARD,USER_CARD_NUM,USER_CARD_CVC,USER_CARD_DATE,USER_TOTAL_MONEY";
	
	//결제 정보 입력
	public void insertPay(SafePayDTO dto)
	{
		getConnection();
		sql = "INSERT INTO SAFEPAY("+COLUMNS+") VALUES(PAY_SEQ.NEXTVAL,?,?,SYSDATE,?,?,?,?,?,?)";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUserId());
			pstmt.setString(2, dto.getUserPh());
			pstmt.setString(3, dto.getUserName());
			pstmt.setString(4, dto.getUserCard());
			pstmt.setString(5, dto.getUserCardNum());
			pstmt.setString(6, dto.getUserCardCvc());
			pstmt.setString(7, dto.getUserCardDate());
			pstmt.setString(8, dto.getTotalMoney());
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
	
	public void kakaoPay(SafePayDTO dto)
	{
		getConnection();
		sql = "INSERT INTO SAFEPAY(PAY_NUM,USER_ID,USER_PH,PAY_DATE,USER_NAME,USER_TOTAL_MONEY)VALUES(PAY_SEQ.NEXTVAL,?,?,SYSDATE,?,?)";
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUserId());
			pstmt.setString(2, dto.getUserPh());
			pstmt.setString(3, dto.getUserName());
			pstmt.setString(4, dto.getTotalMoney());
			pstmt.executeUpdate();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
	}
	
	public SafePayDTO selectTotalMoney()
	{
		getConnection();
		SafePayDTO dto = new SafePayDTO();
		sql = "SELECT * \r\n" + 
				"FROM (\r\n" + 
				"	SELECT USER_TOTAL_MONEY , TO_CHAR(PAY_DATE,'YYYYMM') AAAA FROM SAFEPAY\r\n" + 
				"	)\r\n" + 
				"PIVOT\r\n" + 
				"(\r\n" + 
				"    SUM(USER_TOTAL_MONEY) \r\n" + 
				"    FOR\r\n" + 
				"    AAAA IN ( '202002','202003','202004','202005' ) \r\n" + 
				")";
		try 
		{
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setFabruary(rs.getString(1));
				dto.setMarch(rs.getString(2));
				dto.setApril(rs.getString(3));
				dto.setMay(rs.getString(4));
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
}
