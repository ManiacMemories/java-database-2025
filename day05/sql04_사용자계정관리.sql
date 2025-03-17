/*
* 사용자 생성,
*/
-- HR 계정 잠금해체
ALTER USER hr ACCOUNT UNLOCK;
ALTER USER hr IDENTIFIED BY 12345;

SELECT *
  FROM employees;

-- PRIVILEGES 권한
-- CREATE SESSION - 접속권한
-- CREATE TABLE, ALTER ANY TABLE, DROP ANY TABLE, ..
-- 권한은 하나하나 다 부여해야 함!

/*
-- scott 계정 잠금해체
ALTER USER scott ACCOUNT UNLOCK;

-- SCOTT은 CREATE SESSION 권한 없음 LOGIN DENIED
-- SCOTT에서 접속권한 부여
GRANT CREATE SESSION TO scott;

*/

SELECT * FROM jobs;

CREATE VIEW JOBS_VIEW
AS
	SELECT *
	  FROM jobs;

-- hr 계정에 어떤 권한이 있는지 조회
SELECT *
  FROM USER_TAB_PRIVS;

CREATE TABLE TEST (
	id NUMBER PRIMARY KEY,
	name varchar(20) NOT null
);

-- Role(역할) 관리
-- 여러 권한을 묶어놓은 개념.
-- role 확인
-- CONNECT - DB접속 및 테이블생성 조회 권한
-- RESOURCE - PL/SQL 사용권한
-- DBA - 모든 시스템권한
-- EXP_FULL_DATABASE - DB익스포트 권한...
SELECT * FROM user_role_privs;

SELECT * FROM dba_role_privs;

-- HR에게 DBA역할 role 부여
GRANT DBA TO hr;

SELECT * FROM SAMPLEUSER.MEMBER;

-- HR에게 DBA역할 권한 해제
REVOKE DBA FROM hr;

COMMIT;