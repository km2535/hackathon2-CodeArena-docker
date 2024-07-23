DROP TABLE IF EXISTS `_USER`;
CREATE TABLE `_USER`
(
    `user_id`      BIGINT(32)      NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '유저 아이디',
    `email`        VARCHAR(50)    NOT NULL COMMENT '유저 이메일',
    `nickname`    VARCHAR(50)     NOT NULL COMMENT '유저 닉네임',
    `password`     VARCHAR(255)    NOT NULL COMMENT '유저 패스워드',
    `created_at`   TIMESTAMP       NOT NULL COMMENT '유저 생성일',
    `modified_at`  TIMESTAMP       NOT NULL COMMENT '유저 수정일'
);

DROP TABLE IF EXISTS `ANSWER`;
CREATE TABLE `ANSWER`
(
    `answer_id`     BIGINT AUTO_INCREMENT PRIMARY KEY,
    `question_id`   BIGINT NOT NULL,
    `user_id`       BIGINT NOT NULL,
    `content`       VARCHAR(255) NOT NULL,
    `likes`         INT DEFAULT 0,
    `hates`         INT DEFAULT 0,
    `created_at`    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `modified_at`   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS `COMMENT`;
CREATE TABLE `COMMENT`
(
    `comment_id`   BIGINT AUTO_INCREMENT PRIMARY KEY,
    `answer_id`    BIGINT NOT NULL,
    `user_id`      BIGINT NOT NULL,
    `content`      VARCHAR(255) NOT NULL,
    `created_at`   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `modified_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

DROP TABLE IF EXISTS `QUESTION`;
CREATE TABLE `QUESTION`
(
    `question_id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `user_id`     BIGINT NOT NULL,
    `title`       VARCHAR(255) NOT NULL,
    `content`     VARCHAR(255) NOT NULL,
    `likes`       INT DEFAULT 0,
    `hates`       INT DEFAULT 0,
    `views`       INT DEFAULT 0,
    `created_at`  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `modified_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

DROP TABLE IF EXISTS `USER_QUESTION_SCRAP`;
CREATE TABLE `USER_QUESTION_SCRAP`
(
    `question_id` BIGINT NOT NULL,
    `user_id`     BIGINT NOT NULL
);
