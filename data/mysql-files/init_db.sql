-- 기본 DB / Schema 생성
CREATE DATABASE IF NOT EXISTS `CODE_ARENA`;
USE `CODE_ARENA`;
SOURCE /var/lib/mysql-files/schema.sql;
-- 
SOURCE /var/lib/mysql-files/bulk_insert_user_dummy.sql;

SOURCE /var/lib/mysql-files/bulk_insert_question_dummy.sql;

SOURCE /var/lib/mysql-files/bulk_insert_answer_dummy.sql;