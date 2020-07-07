//*********************DONE*******************
package com.upgrad.blog.interfaces;

import com.upgrad.blog.dto.UserDTO;

import java.sql.SQLException;

/**
 * Part of stub
 */
public interface UserCRUD {

    /**
     *
     * @param emailId
     * @return
     * @throws SQLException
     */
    public UserDTO findByEmail(String emailId) throws SQLException;

    /**
     *
     * @param userDTO
     * @return
     * @throws SQLException
     */
    public UserDTO create(UserDTO userDTO) throws SQLException;

}
