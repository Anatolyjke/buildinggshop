CREATE TABLE shopshop.users
(
user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nickname VARCHAR (30) NOT NULL UNIQUE,
password VARCHAR (30),
isadmin INT NOT NULL
);
CREATE TABLE shopshop.goods(
good_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
good_name VARCHAR (30),
good_discription VARCHAR (255),
good_photo LONGBLOB,
good_views LONG,
good_price INT,
good_likesamount LONG
);
CREATE TABLE shopshop.comments(
comment_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
good_id INT NOT NULL,
user_id INT NOT NULL,
text VARCHAR(255),
comment_date DATETIME,
FOREIGN KEY (user_id) REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (good_id) REFERENCES goods (good_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE shopshop.likes(
  like_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  good_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (good_id) REFERENCES goods (good_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE shopshop.orders(
  order_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  order_telephone VARCHAR (30),
  order_complete INT NOT NULL,
  order_date DATETIME,
  order_text VARCHAR(50)

);
CREATE TABLE shopshop.orderlist (
  list_id   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  list_name VARCHAR(30),
  list_amount INT NOT NULL,
  order_id    INT  NOT NULL,
  FOREIGN KEY (order_id) REFERENCES users (order_id) ON UPDATE CASCADE ON DELETE CASCADE
);


/*
user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nickname VARCHAR(30) NOT NULL UNIQUE,
password VARCHAR(30),
email VARCHAR(30) NOT NULL UNIQUE,
);
CREATE TABLE library.postbook (
post_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
text VARCHAR(512),
post_date DATETIME NOT NULL,
book LONGBLOB,
FOREIGN KEY (user_id) REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE library.comment
(
comment_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
post_id INT NOT NULL,
user_id INT NOT NULL,
text VARCHAR
comment_date DATETIME NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (post_id) REFERENCES postbook (post_id) ON UPDATE CASCADE ON DELETE CASCADE
);*/
