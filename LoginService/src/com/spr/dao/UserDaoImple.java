package com.spr.dao;




	import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.RowMapperResultSetExtractor;
import org.springframework.stereotype.Repository;

	import com.spr.dto.User;

	@Repository
	public class UserDaoImple implements UserDao{ 
		@Autowired
		private JdbcTemplate jdbctemplate;


		public void setJdbctemplate(JdbcTemplate jdbctemplate) {
			this.jdbctemplate = jdbctemplate;
		}

		public UserDaoImple() {
			super();
			// TODO Auto-generated constructor stub
		}

		@Override
		public Boolean insert(User user) {
			System.out.println("Inserting.............");

			String flag="1";
			String type="P";
			//Login Table
			String sql1= "insert into login values (?,?,?,?)";
			int a=jdbctemplate.update(sql1, new Object[] { 

					user.getEmail(),
					user.getPassword(),
					type,
					flag

			});
			System.out.println(a+"inserted into login");

			String	sql= "insert into user(FirstName, LastName,Designation,Password,Cpassword,Email,PhoneNo,Gender,Age,RegistrationDate,Address,isdeleted) values(?,?,?,?,?,?,?,?,?,curdate(),?,0)";





			int	b=jdbctemplate.update(sql, new Object [] {


					user.getFirstName(),
					user.getLastName(),
					user.getDesignation(),
					user.getPassword(),
					user.getCpassword(),
					user.getEmail(),
					user.getPhoneNo(),
					user.getGender(),
					user.getAge(),

					user.getAddress()
			});
			System.out.println(b+"inserted into patient");

			return true;

		}

		@Override
		public int update(User user) {
			String query = "update user set FirstName=?, LastName=?,Designation=?,Password=?,Cpassword=?,Email=?,PhoneNo=?,Gender=?,Age=?,Address=? where userId=?";
			int a=jdbctemplate.update(query,user.getFirstName(),user.getLastName(),user.getDesignation(),user.getPassword(),user.getCpassword(),user.getEmail(),user.getPhoneNo(),user.getGender()
					,user.getAge(),user.getAddress());

			a=jdbctemplate.update(query, new Object [] {


					user.getFirstName(),
					user.getLastName(),
					user.getDesignation(),
					user.getPassword(),
					user.getCpassword(),
					user.getEmail(),
					user.getPhoneNo(),
					user.getGender(),
					user.getAge(),

					user.getAddress(),
					user.getUserId()
			});
			return a;



		}


		@Override
		public List selectAllUser() {
			System.out.println("Selecting...");
			String sql="select * from user where isdeleted=0 ";
			List<User> userList=jdbctemplate.query(sql, new RowMapper<User>() {

				@Override
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					//while(rs.next()) 
					//{
						User user=new User();
						user.setFirstName(rs.getString("FirstName"));
						user.setLastName(rs.getString("LastName"));
						user.setDesignation(rs.getString("Designation"));
						user.setPassword(rs.getString("Password"));
						user.setCpassword(rs.getString("Cpassword"));
						user.setEmail(rs.getString("Email"));
						user.setPhoneNo(rs.getString("PhoneNo"));
						user.setGender(rs.getString("Gender"));
						user.setAge(rs.getInt("Age"));
						user.setRegistrationDate(rs.getString("RegistrationDate"));
						user.setAddress(rs.getString("Address"));
						user.setUserId(rs.getInt("UserId"));
						//userList.add(user);
						
					//}
					
					
					return user;
				}
			});
			//System.out.println(u);
			//return userList;
			return userList;


		}

		@Override
		public User selectbyId(int UserId) {
			String sql = "select * from user where UserId = ?";
			User u = jdbctemplate.queryForObject(sql, new Object[] {UserId}, new RowMapper<User>() {

				@Override
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					User user = new User();
					user.setFirstName(rs.getString("FirstName"));
					user.setLastName(rs.getString("LastName"));
					user.setDesignation(rs.getString("Designation"));
					user.setPassword(rs.getString("Password"));
					user.setCpassword(rs.getString("Cpassword"));
					user.setEmail(rs.getString("Email"));
					user.setPhoneNo(rs.getString("PhoneNo"));
					user.setGender(rs.getString("Gender"));
					user.setAge(rs.getInt("Age"));
					user.setRegistrationDate(rs.getString("RegistrationDate"));
					user.setAddress(rs.getString("Address"));
					user.setUserId(rs.getInt("UserId"));
					return user;
				}
			});
			return u;


		}

		@Override
		public Boolean delete(int id) {
			System.out.println(id);
			String sql = " update user set isdeleted= 1 where UserId = ?";
			
			
			int i=jdbctemplate.update(sql, new Object[] {id});

			
			

			if(i==0)
			{
				return false;
			}
			else return true;
		}



		//InsertMethod
		/*	@Override
		public Boolean insert(Patient patient) {
			System.out.println("Inserting.............");
			String flag="1";
			String type="P";

			//Login Table
			String sql= "insert into login values (?,?,?,?)";
			int a=jdbctemplate.update(sql, new Object[] { 

					patient.getEmail(),
					patient.getPassword(),
					type,
					flag
			});
			System.out.println(a+"inserted into login");

			sql= "insert into patient(first_name ,last_name ,gender,email,blood_group, age , address ,phone_no,password,cpassword,flag,type) values(?,?,?,?,?,?,?,?,?,?,?,?)";





			a=jdbctemplate.update(sql, new Object [] {


					patient.getFirstName(),
					patient.getLastName(),
					patient.getGender(),
					patient.getEmail(),
					patient.getBloodGroup(),
					patient.getAge(),
					patient.getAddress(),
					patient.getPhoneNo(),
					patient.getPassword(),
					patient.getCpassword(),
					flag,
					type,

			});
			System.out.println(a+"inserted into patient");

			return true;
		}

		@Override
		public Boolean update(Patient patient) {

			return null;
		}

		@Override
		public Patient get(Integer id) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public Boolean delete(Integer id) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public List<Patient> list() {
			// TODO Auto-generated method stub
			return null;
		}



	}*/


}
