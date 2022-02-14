-- Create a database based on last week's task 3. In that task we designed a database for a blog. The database has
-- to follow the plan created last week. If you need to update the plan, include an updated drawing of the
-- database to your return. Add foreign key restrictions for the tables as well.

create database blog;
create table Author(
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  surname VARCHAR(255) NOT NULL,
  entry_id INT NOT NULL
);
create table Entry(
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  author_id INT NOT NULL,
  date DATE NOT NULL
);
alter table Author add constraint fk_entry_id foreign key (entry_id) references Entry(id);
alter table Entry add constraint fk_author_id foreign key (author_id) references Author(id);

create table comment(
  id INT AUTO_INCREMENT PRIMARY KEY,
  comment TEXT(65535) NOT NULL
);
create table entry_comment(
  id INT AUTO_INCREMENT PRIMARY KEY,
  comment_id INT REFERENCES comment(id) ON DELETE CASCADE ON UPDATE RESTRICT,
  entry_id INT REFERENCES Entry(id) ON DELETE CASCADE ON UPDATE RESTRICT
);

create table updating(
id int AUTO_INCREMENT PRIMARY Key,
date DATE NOT NULL,
DESCRIPTION TEXT NOT NULL

);
create table entry_update(
id int primary key,
entry_id INT references Entry(id) ON DELETE CASCADE ON UPDATE RESTRICT

);

create table tag(
  id INT AUTO_INCREMENT PRIMARY KEY,
  tag VARCHAR(100) NOT NULL
);
create table entry_tag(
  id INT AUTO_INCREMENT PRIMARY KEY,
  tag_id INT REFERENCES tag(id) ON DELETE CASCADE ON UPDATE RESTRICT,
  entry_id INT REFERENCES Entry(id) ON DELETE CASCADE ON UPDATE RESTRICT
);