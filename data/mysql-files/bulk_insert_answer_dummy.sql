INSERT INTO `answer` (answer_id, question_id, user_id, content, likes, hates, created_at, modified_at) VALUES
(1, 1, 1, 'This is an answer to question 1 by user 1', 10, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 1, 2, 'This is another answer to question 1 by user 2', 5, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 2, 3, 'This is an answer to question 2 by user 3', 8, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 2, 4, 'This is another answer to question 2 by user 4', 12, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 3, 5, 'This is an answer to question 3 by user 5', 3, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 3, 6, 'This is another answer to question 3 by user 6', 9, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 4, 7, 'This is an answer to question 4 by user 7', 6, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, 4, 8, 'This is another answer to question 4 by user 8', 15, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(9, 5, 9, 'This is an answer to question 5 by user 9', 2, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(10, 5, 10, 'This is another answer to question 5 by user 10', 7, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
