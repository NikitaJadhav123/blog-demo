package com.upgrad.blog.dto;

/**
 * TODO: 2.3. Declare 3 private instance variables in this class named as
 * userId, emailId and password. Out of these 3 variables, userId will be of
 * type int. Other two variables will be of type String.
 * 
 * TODO: 2.4. Provide getters and setters for each of the instance variables.
 */

public class UserDTO {
	// *****************START*****************Solution 2.3 + 2.4*****************
    private int userId;
    private String emailId;
    private String password;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
	// *****************END*****************Solution 2.3 + 2.4*****************
//Uncomment the toString() method given below
	@Override
	public String toString() {
		return "UserDTO{" + "userId=" + userId + ", emailId='" + emailId + '\'' + ", password='" + password + '\''
				+ '}';
	}

	public static void main(String[] args) {
		UserDTO userDTO = new UserDTO();
		userDTO.setUserId(1);
		userDTO.setEmailId("dummy@dummy.com");
		userDTO.setPassword("password");

		System.out.println(userDTO);

//		/**
//		 * Your output should be similar to this.
//		 * UserDTO{userId=1, emailId='dummy@dummy.com', password='password'}
//		 */
	}
}
