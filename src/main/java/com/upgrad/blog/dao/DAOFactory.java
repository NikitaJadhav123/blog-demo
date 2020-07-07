package com.upgrad.blog.dao;

import com.upgrad.blog.interfaces.PostsCRUD;
import com.upgrad.blog.interfaces.UserCRUD;

import javax.sound.sampled.Line;
import java.awt.*;

/**
 * TODO: 6.8. Provide a factory method which returns PostDAO object. (Hint: Return type
 * of this method should be PostsCRUD)
 * TODO: 6.9. Provide a factory method which returns UserDAO object. (Hint: Return type
 * of this method should be UserCRUD)
 */
public class DAOFactory {



    public  UserCRUD getUserCRUDS() {

        return new UserDAO();
    }

    public PostsCRUD getPostsCRUDS() {

        return new PostDAO();
    }



}
