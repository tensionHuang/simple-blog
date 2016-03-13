package com.antena.blog.repository.core.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Rickey Huang on 2015/4/8.
 */
public abstract class AbstractDaoImpl {

    @Autowired
    protected SessionFactory sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getCurrentSession();
    }
}
