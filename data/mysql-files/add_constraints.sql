ALTER TABLE `answer`
    ADD CONSTRAINT fk_question
        FOREIGN KEY(question_id)
            REFERENCES `question` (question_id);

ALTER TABLE `answer`
    ADD CONSTRAINT fk_question
        FOREIGN KEY(user_id)
            REFERENCES `_user` (user_id);


ALTER TABLE `question`
    ADD CONSTRAINT fk_user
        FOREIGN KEY(user_id)
            REFERENCES `_user` (user_id);


ALTER TABLE `comment`
    ADD  CONSTRAINT fk_answer
        FOREIGN KEY(answer_id)
            REFERENCES `answer` (answer_id);


ALTER TABLE `comment`
    ADD CONSTRAINT fk_user
        FOREIGN KEY(user_id)
            REFERENCES `_user` (user_id);

ALTER TABLE `user_question_scrap`
    ADD  CONSTRAINT fk_question
        FOREIGN KEY(question_id)
            REFERENCES `question` (question_id);


ALTER TABLE `user_question_scrap`
    ADD CONSTRAINT fk_user
        FOREIGN KEY(user_id)
            REFERENCES `_user` (user_id);
