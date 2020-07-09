package com.upgrad.blog.dao;

/**
 * TODO: 6.12. Implement the PostsCRUD interface.
 * TODO: 6.13. Define the following methods and return null for each of them. You will provide
 * a proper implementation for each of these methods, later in this project.
 * a. findByEmail
 * b. findByTag
 * c. findAllTags
 * d. deleteById
 * TODO: 6.14. create() method should take post details as input and insert these details
 * into the POSTS table. Return the same PostDTO object which was passed as an input argument.
 */

/**
 * TODO: 7.1. Implement findByEmail() method which takes email id as an input
 * parameter and returns all the posts corresponding to the email id from the POSTS
 * table defined in the database.
*/

/**
 * TODO: 7.6. Implement deleteById() method which takes post id and email id
 * as an input parameters and delete the corresponding post from the database. If
 * the post was deleted successfully, then return true, otherwise return false.
 */

import com.upgrad.blog.db.DatabaseConnection;
import com.upgrad.blog.dto.PostDTO;
import com.upgrad.blog.dto.UserDTO;
import com.upgrad.blog.interfaces.PostsCRUD;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 * TODO: 7.10. Implement findAllTags() method which returns a set of all unique tags
 * in the POSTS table.
 * TODO: 7.11. Implement findByTag() method which takes "tag" as an input parameter and
 * returns all the posts corresponding to the input "tag" from the POSTS table defined
 * in the database.
 */
public class PostDAO  implements PostsCRUD {

    Connection con= DatabaseConnection.getInstance();



    public List<PostDTO> findByEmail(String emailId) throws SQLException{
       List<PostDTO> postDTO=new ArrayList<>();

        String query = "select * from POSTS where email_id= ?";
        PreparedStatement  stm = con.prepareStatement(query);
        stm.setString(1,emailId );
        PostDTO postDT=new PostDTO();

        ResultSet resultSet = stm.executeQuery();
        if(resultSet.next()) {
                postDT.setPostId(resultSet.getInt(1));
                postDT.setEmailId(resultSet.getString(2));
                postDT.setTitle(resultSet.getString(3));
                postDT.setDescription(resultSet.getString(4));
                postDT.setTag(resultSet.getString(5));


        }

        return postDTO;

    }


    public boolean deleteById(int id, String emailId) throws SQLException{

        PreparedStatement ps=con.prepareStatement("delete from POSTS where id=? and email_id=?");
        ps.setInt(1, id);
        ps.setString(2,emailId);

        int i=ps.executeUpdate();
        if(i==0)
        {
            return true;
        }

        return false;


    }



    public List<PostDTO> findByTag(String tag) throws SQLException{
        List<PostDTO> postDTO=new ArrayList<>();

        String query = "select * from POSTS where tag= ?";
        PreparedStatement  stm = con.prepareStatement(query);
        stm.setString(1, tag);
        PostDTO postDT=new PostDTO();

        ResultSet resultSet = stm.executeQuery();
        if(resultSet.next()) {
                postDT.setPostId(resultSet.getInt(1));
                postDT.setEmailId(resultSet.getString(2));
                postDT.setTitle(resultSet.getString(3));
                postDT.setDescription(resultSet.getString(4));
                postDT.setTag(resultSet.getString(5));

        }

        return postDTO;
    }

    /**
     *
     * @return
     * @throws SQLException
     */
    public HashSet<String> findAllTags(){

        return null;
    }



    public PostDTO create(PostDTO postDTO) throws SQLException {

        PreparedStatement st = con
                .prepareStatement("insert into POSTS values(?, ?, ?, ?, ?, ?)");

        postDTO.setPostId(1);

        st.setInt(1, postDTO.getPostId());

        st.setString(2, postDTO.getEmailId());
        st.setString(3, postDTO.getTitle());
        st.setString(4,postDTO.getDescription());
        st.setString(5,postDTO.getTag());
        st.setTimestamp(6, Timestamp.valueOf(postDTO.getTimestamp()));
        // Execute the insert command using executeUpdate()
        // to make changes in database
        st.executeUpdate();
        return postDTO;

    }

}
