package kr.ac.kopo.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.ac.kopo.login.vo.LoginVO;
import kr.ac.kopo.util.ConnectionFactory;

public class LoginDAO {

	
	public LoginVO login(LoginVO loginVO) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("select id, password, name, type ");
		sql.append(" from t_member ");
		sql.append(" where id = ? and password = ?"  );
		
		try(Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			
			pstmt.setString(1, loginVO.getId());
			pstmt.setString(2, loginVO.getPassword());

			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String password = rs.getString("password");
				String type = rs.getString("type");
				
				LoginVO login = new LoginVO(id, password, name, type);
				
				return login;
			}
			

		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	/*
	 * public static void main(String[] args) { LoginDAO dao = new LoginDAO();
	 * System.out.println(dao.login(new LoginVO("zzong36", ))); }
	 */
	 
	
}
