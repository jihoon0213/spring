USE mydatabase;

# STRING
# VARCHAR(길이)
CREATE TABLE table4
(
    col1 VARCHAR(1),
    col2 VARCHAR(3),
    col3 VARCHAR(5)
);
INSERT INTO table4(col1, col2, col3)
VALUES ('a', 'abc', 'abcde');
INSERT INTO table4(col1, col2, col3)
VALUES ('한', 'abc', 'abcde');

SELECT *
FROM table4;

# 연습
# table5 만들기 - id(최대 8글자), name(최대 20글자) 컬럼
# 두 개의 레코드 입력(성공)
# 실패하는 레코드 입력 시도
CREATE TABLE table5
(
    id   VARCHAR(8),
    name VARCHAR(20)
);
INSERT INTO table5
    (id, name)
VALUES ('1', 'park');

SELECT *
FROM table5;

INSERT INTO table5
    (id, name)
VALUES ('123456789', 'qwerqwerqwerqwerqwera');

# NUMBER
# INTEGER (소수점없는)
# DECIMAL (소숫점있는)
CREATE TABLE table6
(
    col1 INT,
    col2 BIGINT # 2^63 - 1
);
INSERT INTO table6
    (col1, col2)
VALUES (2342432, 234234234);
INSERT INTO table6
    (col1, col2)
VALUES (2147483647, 2147483647);
SELECT *
FROM table6;

# 연습
# score(정수), length(큰정수) 컬럼이 있는 table7 만들기
# 두 개의 레코드 입력(성공)
# 한 개의 레코드 입력 실패 시도

CREATE TABLE table7
(
    score  INT,
    length BIGINT
);
INSERT INTO table7
    (score, length)
VALUES (1234, 123456);

INSERT INTO table7
    (score, length)
VALUES (12345678901212, 1234612314);

INSERT INTO table7
    (score, length)
VALUES ('1234', 123456);


SELECT *
FROM table7;

# DECIMAL (총길이, 소숫점이하길이)
CREATE TABLE table8
(
    col1 INT,
    col2 DECIMAL(5, 1),
    col3 DECIMAL(10, 3),
    col4 DEC(5, 1),
    col5 DEC(10, 3)
);
INSERT INTO table8
    (col1, col2, col3, col4, col5)
VALUES (2342, 1234.5, 1234567.123, null, null);

INSERT INTO table8
    (col1, col2, col3, col4, col5)
VALUES (2342, 1234.56, 1234567.1234, null, null);


SELECT *
FROM table8;

# 연습
# score (총길이 4, 소숫점이하 2), money(총길이 10, 소숫점이하 3) table9
# 두개 레코드 입력 성공
# 한개 레코드 입력 실패
CREATE TABLE table9
(
    score DEC(4, 2),
    money DEC(10, 3)
);
INSERT INTO table9
    (score, money)
VALUES (12.34, 1234567.123);

INSERT INTO table9
    (score, money)
VALUES (123.34, 1234567.123);

SELECT *
FROM table9;


# DATE, TIME
# DATE : 날짜
# TIME : 시간
# DATETIME
CREATE TABLE table10
(
    col1 DATE,
    col2 TIME,
    col3 DATETIME
);
INSERT INTO table10
    (col1, col2, col3)
VALUES ('2025-06-11', '10:25:50', '2025-06-11 10:25:50');
SELECT *
FROM table10;

# 연습
# birth_date(날짜), work_time(시간), born(날짜시간) table11 만들기
# 두 개의 레코드 입력
CREATE TABLE table11
(
    birth_date DATE,
    work_time  TIME,
    born       DATETIME
);
INSERT INTO table11
    (birth_date, work_time, born)
VALUES ('2025-06-11', '10:30:00', '2000-01-01');
SELECT *
FROM table11;

# STRING : VARCHAR(길이)
# NUMBER : INT, BIGINT, DEC(총길이, 소수점이하길이)
# 날짜시간 : DATE, TIME, DATETIME

CREATE TABLE table12
(
    col1 VARCHAR(10),
    col2 INT,
    col3 BIGINT,
    col4 DEC(10, 2),
    col5 DATE,
    col6 TIME,
    col7 DATETIME
);
INSERT INTO table12
    (col1, col2, col3, col4, col5, col6, col7)
VALUES ();
SELECT *
FROM table12;

CREATE TABLE table13
(
    name       VARCHAR(10),
    birth_date DATE,
    score      DEC(10, 2),
    born_at    DATETIME
);

INSERT INTO table13
    (name, birth_date, score, born_at)
VALUES ();


SELECT *
FROM table13;


