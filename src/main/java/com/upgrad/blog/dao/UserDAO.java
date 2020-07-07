package com.upgrad.blog.dao;

import com.upgrad.blog.db.DatabaseConnection;
import com.upgrad.blog.dto.UserDTO;
import com.upgrad.blog.interfaces.UserCRUD;

import javax.xml.registry.infomodel.User;
import java.sql.*;

/**
 * TODO: 6.5. Implement the UserCRUD interface.
 * TODO: 6.6. findByEmail() method should take email id as an input parameter and
 * return the user details corresponding to the email id from the USERS table defined
 * in the database.
 * TODO: 6.7. create() method should take user details as input and insert these details
 * into the USERS table. Return the same UserDAO object which was passed as an input argument.
 */
public class UserDAO implements UserCRUD {

   Connection con= DatabaseConnection.getInstance();



    public UserDTO findByEmail(String emailId) throws SQLException{

        UserDTO userDTO=new UserDTO();

        String query = "select * from USERS where email_id= ?";
        PreparedStatement  stm = con.prepareStatement(query);
        stm.setString(1,emailId );


        ResultSet resultSet = stm.executeQuery();
        if(resultSet.next()) {

            userDTO.setUserId(resultSet.getInt(1));
            userDTO.setEmailId(resultSet.getString(2));
            userDTO.setPassword(resultSet.getString(3));

        }

        return userDTO;


    }


    public UserDTO create(UserDTO userDTO) throws SQLException{

        PreparedStatement st = con
                .prepareStatement("insert into USERS values(?, ?, ?)");

        userDTO.setUserId(2);

        st.setInt(1, userDTO.getUserId());

        st.setString(2, userDTO.getEmailId());
        st.setString(3, userDTO.getPassword());
        // Execute the insert command using executeUpdate()
        // to make changes in database
        st.executeUpdate();
        return userDTO;

    }





   public static void main(String[] args) {
		try {
		UserDAO userDAO = new UserDAO();
			UserDTO temp = new UserDTO();
			temp.setUserId(1);
			temp.setEmailId("temp@temp.temp");
			temp.setPassword("temp");
			userDAO.create(temp);
			System.out.println(userDAO.findByEmail("temp@temp.temp"));
		} catch (Exception e) {
			System.out.println("FAILED");
		}

//		/**
//		 * Following should be the desired output of the main method.
//		 * UserDTO{userId=11, emailId='temp@temp.temp', password='temp'}
//		 */
	}
}
