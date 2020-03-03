package com.userConnect.conf;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class BaseDAO {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	   
	/*@Bean
	  public DataSource dataSource() {
	      DriverManagerDataSource ds = new DriverManagerDataSource();
	      ds.setDriverClassName(oracle.jdbc.driver.OracleDriver.class.getName());
	      ds.setUrl("jdbc:oracle:thin:@localhost:1521:orcl");
	      ds.setUsername("userConnect");
	      ds.setPassword("userConnect");
	      return ds;
	  }*/
	
	 @Bean
	    public DataSource dataSource() {
	        DriverManagerDataSource dataSource = new DriverManagerDataSource();
	        dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
	        dataSource.setUrl("jdbc:oracle:thin:@192.168.0.103:1521:orcl");//change url
	        dataSource.setUsername("userConnect");//change userid
	        dataSource.setPassword("userConnect");//change pwd
	        return dataSource;
	    }
	 
	    @Bean
	    public JdbcTemplate jdbcTemplate() {
	        JdbcTemplate jdbcTemplate = new JdbcTemplate();
	        jdbcTemplate.setDataSource(dataSource());
	        return jdbcTemplate;
	    }

}
