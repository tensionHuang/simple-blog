package com.antena.blog.repository.core.service.impl;

import com.antena.blog.repository.core.dao.BlogDao;
import com.antena.blog.repository.core.service.BlogService;
import com.antena.blog.repository.model.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rickey Huang on 2015/5/14.
 */
@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    BlogDao blogDao;

    @Override
    public String createOrUpdate(Blog blog) {
        return blogDao.createOrUpdate(blog);
    }

    @Override
    public Blog get(String uid) {
        return blogDao.get(uid);
    }

    @Override
    public List<Blog> listByUpdateDate() {
        return blogDao.list();
    }
}
