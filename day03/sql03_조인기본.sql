/*
 *  JOIN
 */
-- 개념
-- 정규화되어 나누어진 테이블의 데이터를 한꺼번에 모아서 쉽게 출력하기 위한 기법
SELECT *
  FROM employees e , departments d
 WHERE e.department_id = d.department_id;


-- 총 데이터수가 2889개 출력
-- 카테시안 곱
SELECT *
  FROM EMPLOYEES e, DEPARTMENTS d ;

-- 오라클 방식.
SELECT *
  FROM employees e , departments d
 WHERE e.department_id = d.department_id;

-- ANSI 표준 문법
SELECT *
  FROM employees e
 INNER JOIN DEPARTMENTS d 
 	ON e.department_id = d.DEPARTMENT_ID;

-- 필요컬럼만 명세
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS "full_name"
	 , e.email, e.PHONE_NUMBER
	 , e.HIRE_DATE, e.JOB_ID
	 , d.DEPARTMENT_NAME
  FROM EMPLOYEES e ,DEPARTMENTS d 
 WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
 
-- 내부조인(INNER JOIN)
 SELECT e.employee_id, e.first_name || ' ' || e.last_name AS "full_name"
	 , e.email, e.PHONE_NUMBER
	 , e.HIRE_DATE, e.JOB_ID
	 , d.DEPARTMENT_ID
	 , d.DEPARTMENT_NAME
	 , l.city, l.state_province,l.street_address
  FROM EMPLOYEES e ,DEPARTMENTS d , locations l
 WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
   AND l.location_id = d.location_id
   AND d.DEPARTMENT_ID = 60;

SELECT e.employee_id, e.first_name || ' ' || e.last_name AS "full_name"
	 , e.email, e.PHONE_NUMBER
	 , e.HIRE_DATE, e.JOB_ID
	 , d.DEPARTMENT_ID
	 , d.DEPARTMENT_NAME
	 , l.city, l.state_province,l.street_address
  FROM EMPLOYEES e 
 INNER JOIN DEPARTMENTS d
 	ON e.DEPARTMENT_ID  = d.DEPARTMENT_ID 
 INNER JOIN locations l
 	ON l.LOCATION_ID = d.LOCATION_ID
 WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
   AND l.location_id = d.location_id
   AND d.DEPARTMENT_ID = 60;