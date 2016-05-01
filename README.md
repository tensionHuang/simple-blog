# Simple Blog
This is a simple blog that built up depend on Spring MVC.

# Features:
1. You can post the blog as you want. and it will store in database.
2. You can change the display language to Japanese, Chinese, or English.

# Tools and frameworks:
1. Gradle and Maven
2. Java, Spring Framework, Spring MVC
3. Hibernate, Postgresql
4. Boostrap
5. Apache Tomcat

# Architecture: 
Separating the project into three parts.

### blog-repository-core: 
* It is resposible for backend including DAO, SERVICE.
* I use Java relational database hibernate to build up data model.
* I write all test cases for the DAO and SERVICE.

### blog-repository-interface:
* All domain models is placed here.

### blog-repository-web:
* I use Spring MVC Framework to separate web application into controller, view, model.
* I use Boostrap template to complete the UI.

# How to build up:
1. install JDK 6.
1. init the postgesql db schema according to 'postgesql.sql'.
2. put the simple-blog-web.war under the ${CATALINA_HOME}/webapps.
