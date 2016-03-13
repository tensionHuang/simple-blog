package com.antena.blog.repository.core.dao;

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
public class BlogDaoTest {

    private static final Logger log = LoggerFactory.getLogger(BlogDaoTest.class);

    @Autowired
    BlogDao blogDao;

    private Blog blog;

    @Before
    public void setUp() throws Exception {
        blog = new Blog();
        blog.setAuthorName("rickey");
        blog.setContent("This is a test content");
        blog.setTitle("My First Blog");
    }

    @Test
    public void createOrUpdateTest() throws Exception {
        log.info("this is test");
        blogDao.createOrUpdate(blog);
    }

    @Test
    public void listTest() throws Exception {
        List<Blog> blogs = blogDao.list();
        log.info("blogs : {}", blogs.size());
    }

    @Test
    public void getTest() throws Exception {
        Blog blog = blogDao.get("2c9099054d505f9f014d505fa0af0000");
    }
}
