package com.userConnect.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.userConnect.conf.BaseDAO;
import com.userConnect.model.RegisterModel;
import com.userConnect.service.RegisterServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

@Repository
public class RegisterDao extends BaseDAO implements SQLQuery {
	static Logger log = Logger.getLogger(RegisterServiceImpl.class.getName());

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private DataSource dataSource;
	@Autowired
	private SQLQuery SQLQuery;
	

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
	    this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	

	public int userInsert(RegisterModel registerModel) throws Exception{
		log.info("*************Comming to DAO************");
		int success=0;
		try {
			
			registerModel.setRegisterNo(getLoginSequance());
			Connection conn = dataSource.getConnection();
			String query = SQLQuery.INSERT_USER;
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setLong(1, registerModel.getRegisterNo());
			ps.setString(2, registerModel.getFirstName());
			ps.setString(3, registerModel.getLastName());
			ps.setString(4, registerModel.getUserName());
			ps.setString(5, registerModel.getPassword());
			ps.setTimestamp(6, new java.sql.Timestamp(System.currentTimeMillis()));
			ps.setString(7, registerModel.getFirstName());
			ps.setString(8, registerModel.getVerifyCode());
			ps.setString(9, "N");
			success=ps.executeUpdate();  
			
			
			
			//ResultSet rs = ps.executeQuery();
			/*if(rs.next()) {
				String firstName = rs.getString("COLUMN1");
				String LastName = rs.getString("COLUMN2");
				String firstName = rs.getString("COLUMN1");
				String firstName = rs.getString("COLUMN1");
				String firstName = rs.getString("COLUMN1");
				String firstName = rs.getString("COLUMN1");
			}*/
			//rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			log.error("Error in DAO : userInsert: "+e.toString());
			e.printStackTrace();
		}
			return success;	
	}
	
	public int userCheck(String userName) throws Exception{
		//List user = new ArrayList();
		String user;
		int success = 0;
		String query = SQLQuery.USER_SELECT;
		try {
		 user= jdbcTemplate.queryForObject(
				 query, new Object[]{userName}, String.class);
		 if(user.equalsIgnoreCase(userName)) {
			 log.info("User already register");
			 success = 0;
		 } else {
			 success = 1;
		 }
		} catch (EmptyResultDataAccessException e) {
			return 1;
		}
		 return success;
		
	}
	


	private long getLoginSequance() {
		 jdbcTemplate = new JdbcTemplate(dataSource);
		  long seq;
		  String sql = SQLQuery.REGISTER_SEQ;
		  seq = jdbcTemplate.queryForObject(sql, new Object[] {}, Long.class);
		  return seq;
	}



	

	

	

}
