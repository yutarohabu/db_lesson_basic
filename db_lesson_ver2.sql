-- Q1
CREATE TABLE departments(
department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Q2
ALTER TABLE people ADD COLUMN department_id INT UNSIGNED AFTER email;

-- Q3
INSERT INTO departments(name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

 INSERT INTO people (name, email, department_id, age, gender)
 VALUES
('田中ゆうこ', 'tanaka1@gizumo.jp', 1, 25, 2),
('田中ゆうこ', 'tanaka2@gizumo.jp', 1, 25, 2),
('田中ゆうこ', 'tanaka3@gizumo.jp', 1, 25, 2),
('田中ゆうこ', 'tanaka4@gizumo.jp', 2, 25, 2),
('田中ゆうこ', 'tanaka5@gizumo.jp', 2, 25, 2),
('田中ゆうこ', 'tanaka6@gizumo.jp', 2, 25, 2),
('田中ゆうこ', 'tanaka7@gizumo.jp', 2, 25, 2),
('田中ゆうこ', 'tanaka8@gizumo.jp', 3, 25, 2),
('田中ゆうこ', 'tanaka9@gizumo.jp', 4, 25, 2),
('田中ゆうこ', 'tanaka10@gizumo.jp', 5, 25, 2);

 INSERT INTO reports (person_id,content)
 VALUES
 (17,'あ結合練習用。日報です。'),
 (19,'い結合練習用。日報です。'),
 (20,'う結合練習用。日報です。'),
 (24,'え結合練習用。日報です。'),
 (25,'お結合練習用。日報です。'),
 (26,'か結合練習用。日報です。'),
 (21,'き結合練習用。日報です。'),
 (22,'く結合練習用。日報です。'),
 (25,'け結合練習用。日報です。'),
 (27,'こ結合練習用。日報です。');

 --  Q4
UPDATE people SET department_id = 5 WHERE department_id IS NULL;

-- Q5
SELECT name, age FROM people WHERE gender = 1 ;

-- Q6
peopleのテーブルから部署IDが1のレコードを作成日時で重複する物を除いて、名前、メールアドレス、年齢を取得する。