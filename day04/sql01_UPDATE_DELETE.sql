/*
 * UPDATE/DELETE
 * 데이터 변경/데이터 삭제
*/

-- 삭제	
SELECT count(*) FROM professor_new;

DELETE FROM PROFESSOR_NEW 
 WHERE profno = 1001;

DELETE FROM PROFESSOR_NEW; -- TRUNCATE와 동일하나 테이블 초기화는 없음

-- 변경
-- PROFNO 4002인 수잔 서랜든의 아이디를 기존 Shrandon에서 Susan으로, 급여를 330에서 350으로 올리시오.
UPDATE PROFESSOR_NEW pn SET
	   id = 'SusanS'
	 , PAY = 350
 WHERE pn.PROFNO = 4002;


/*
 * 트랜잭션, COMMIT, ROLLBACK
 */

SET TRANSACTION READ WRITE;

SELECT * FROM regions_new;

CREATE TABLE regions_new
AS
 SELECT * FROM regions;

UPDATE PROFESSOR_NEW pn SET
	   id = 'SusanS'
	 , PAY = 350;

SELECT * FROM professor;

ROLLBACK;
COMMIT;

