package com.antena.blog.repository.web.model;


import com.antena.blog.repository.model.Blog;

import java.util.List;

/**
 * Created by Rickey Huang on 2015/5/14.
 */
public class BlogWrapper {

    private List<Blog> blogs;

    public List<Blog> getBlogs() {
        return blogs;
    }

    public void setBlogs(List<Blog> blogs) {
        this.blogs = blogs;
    }
}
