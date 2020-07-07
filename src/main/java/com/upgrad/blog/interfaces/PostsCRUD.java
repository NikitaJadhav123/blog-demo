package com.upgrad.blog.interfaces;

import com.upgrad.blog.dto.PostDTO;

import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;

public interface PostsCRUD {

    /**
     *
     * @param emailId
     * @return
     * @throws SQLException
     */
    public List<PostDTO> findByEmail(String emailId)throws SQLException;

    /**
     *
     * @param postDTO
     * @return
     * @throws SQLException
     */
    public PostDTO create(PostDTO postDTO) throws SQLException;

    /**
     *
     * @param id
     * @param emailId
     * @return
     * @throws SQLException
     */
    public boolean deleteById(int id, String emailId)throws SQLException;

    /**
     *
     * @param tag
     * @return
     * @throws SQLException
     */
    public List<PostDTO> findByTag(String tag)throws SQLException;

    /**
     *
     * @return
     * @throws SQLException
     */
    public HashSet<String> findAllTags() throws SQLException;
}
