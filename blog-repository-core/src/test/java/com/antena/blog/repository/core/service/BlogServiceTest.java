package com.antena.blog.repository.core.service;

import com.antena.blog.repository.model.Blog;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Rickey Huang on 2015/5/14.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ActiveProfiles("development")
@ContextConfiguration("classpath:/META-INF/spring/blog-repository-core/test-context.xml")
@TestPropertySource("classpath:/META-INF/system.properties")
@Transactional
@TransactionConfiguration(defaultRollback = false)
public class BlogServiceTest {

    private static final Logger log = LoggerFactory.getLogger(BlogServiceTest.class);

    @Autowired
    BlogService blogService;

    private Blog blog;

    @Before
    public void setUp() throws Exception {
        blog = new Blog();
        blog.setAuthorName("Brandy");
        blog.setContent("Hello");
        blog.setTitle("GOGO");
    }

    @Test
    public void createTest() throws Exception {
        String uid = blogService.createOrUpdate(blog);
        log.info("created blog uid: {}", uid);
    }

    @Test
    public void listTest() throws Exception {
        List<Blog> blogs = blogService.listByUpdateDate();
        log.info("blogs: {}", blogs);
    }

}
