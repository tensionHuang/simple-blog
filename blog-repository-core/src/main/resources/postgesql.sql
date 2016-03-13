DROP TABLE if EXISTS blog CASCADE;

CREATE TABLE blog (
  blogUid       VARCHAR (100) NOT NULL,
  authorName    VARCHAR (50) NOT NULL ,
  title         VARCHAR (50) NOT NULL,
  content       text NOT NULL ,
  popularity    int8 not null,
  createDate    TIMESTAMP NOT NULL ,
  updateDate    TIMESTAMP NOT NULL,
  PRIMARY KEY (blogUid));