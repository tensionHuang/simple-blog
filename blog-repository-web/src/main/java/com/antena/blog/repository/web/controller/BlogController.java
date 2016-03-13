package com.antena.blog.repository.web.controller;

import com.antena.blog.repository.core.service.BlogService;
import com.antena.blog.repository.model.Blog;
import com.antena.blog.repository.web.model.BlogWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Rickey Huang on 2015/5/14.
 */
@Controller
public class BlogController {

    private static final Logger log = LoggerFactory.getLogger(BlogController.class);

    @Autowired
    BlogService blogService;

    @RequestMapping(value = "/blog")
    public String listBlog(Model model) {
        List<Blog> blogs = blogService.listByUpdateDate();
        BlogWrapper blogWrapper = new BlogWrapper();
        blogWrapper.setBlogs(blogs);
        model.addAttribute(blogWrapper);

        return "index";
    }

    @RequestMapping(value = "/edit")
    public String editBlog(@ModelAttribute Blog blog, Model model) {
        model.addAttribute(blog);
        return "edit";
    }

    @RequestMapping(value = "/editBlog")
    public String updateBlog(@ModelAttribute("blog") Blog blog, Model model) {
        log.info("blog: {}", blog);
        blogService.createOrUpdate(blog);
        List<Blog> blogs = blogService.listByUpdateDate();
        BlogWrapper blogWrapper = new BlogWrapper();
        blogWrapper.setBlogs(blogs);
        model.addAttribute(blogWrapper);
        return "redirect:blog";
    }


}
