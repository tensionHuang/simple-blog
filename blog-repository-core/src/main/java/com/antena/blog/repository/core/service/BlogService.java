package com.antena.blog.repository.core.service;

import com.antena.blog.repository.model.Blog;

import java.util.List;

/**
 * Created by Rickey Huang on 2015/5/14.
 */
public interface BlogService {

    String createOrUpdate(Blog blog);

    Blog get(String uid);

    List<Blog> listByUpdateDate();
}
