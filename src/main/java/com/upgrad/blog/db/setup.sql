create table users (id number primary key, email_id varchar2(100), password varchar2(100));

create sequence user_id_seq;

create trigger trg_user_id before insert on users for each row begin select user_id_seq.nextval into :new.id from dual; end;

insert into users (email_id, password) values ('admin@admin.com', 'admin');

create table posts (id number primary key, email_id varchar2(100), title varchar2(200), description varchar2(1000), tag varchar2(10), timestamp varchar2(200));

create sequence post_id_seq;

create trigger trg_post_id before insert on posts for each row begin select post_id_seq.nextval into :new.id from dual; end;

SELECT owner, table_name FROM all_tables WHERE TABLE_NAME = 'USERS' or TABLE_NAME = 'POSTS';