package com.antena.blog.repository.core.dao.impl;

import com.antena.blog.repository.core.dao.BlogDao;
import com.antena.blog.repository.model.Blog;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by Rickey Huang on 2015/5/14.
 */
@Repository
public class BlogDaoImpl extends AbstractDaoImpl implements BlogDao {

    @Override
    public String createOrUpdate(Blog blog) {
        initBlogConfig(blog);
        Blog mergedBlog = (Blog) currentSession().merge(blog);
        return mergedBlog.getUid();
    }

    private void initBlogConfig(Blog blog) {
        if (blog.getUid() == null || blog.getCreateDate() == null) {
            blog.setCreateDate(new Date());
        }
        blog.setUpdateDate(new Date());
    }

    @Override
    public Blog get(String uid) {
        return (Blog) currentSession().get(Blog.class, uid);
    }

    @Override
    public List<Blog> list() {
        return currentSession().createCriteria(Blog.class)
                .addOrder(Order.desc("updateDate")).list();
    }
}
