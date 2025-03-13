SELECT max(sal + NVL(comm,0)) AS "MAX"
	 , min(sal + NVL(comm,0)) AS "MIN"
	 , round(avg(sal + NVL(comm,0)),1) AS "AVG"
  FROM emp;

SELECT count(birthday) || 'EA' AS "TOTAL"
	 , count(decode(substr(birthday,4, 2), '01', '0')) || 'EA' "JAN"
	 , count(decode(substr(birthday,4, 2), '02', '0')) || 'EA' "FEB"
	 , count(decode(substr(birthday,4, 2), '03', '0')) || 'EA' "MAR"
	 , count(decode(substr(birthday,4, 2), '04', '0')) || 'EA' "APR"
	 , count(decode(substr(birthday,4, 2), '05', '0')) || 'EA' "MAY"
	 , count(decode(substr(birthday,4, 2), '06', '0')) || 'EA' "JUN"
	 , count(decode(substr(birthday,4, 2), '07', '0')) || 'EA' "JUL"
	 , count(decode(substr(birthday,4, 2), '08', '0')) || 'EA' "AUG"
	 , count(decode(substr(birthday,4, 2), '09', '0')) || 'EA' "SEP"
	 , count(decode(substr(birthday,4, 2), '10', '0')) || 'EA' "OCT"
	 , count(decode(substr(birthday,4, 2), '11', '0')) || 'EA' "NOV"
	 , count(decode(substr(birthday,4, 2), '12', '0')) || 'EA' "DEC"
  FROM student;

SELECT count(tel) AS "TOTAL"
	 , count(decode(substr(tel, 1, instr(tel, ')')-1), '02', '0'))"SEOUL"
	 , count(decode(substr(tel, 1, instr(tel, ')')-1), '031', '0'))"GYENGGI"
	 , count(decode(substr(tel, 1, instr(tel, ')')-1), '051', '0'))"BUSAN"
	 , count(decode(substr(tel, 1, instr(tel, ')')-1), '052', '0'))"ULSAN"
	 , count(decode(substr(tel, 1, instr(tel, ')')-1), '053', '0'))"DAEGU"
	 , count(decode(substr(tel, 1, instr(tel, ')')-1), '055', '0'))"GYEONGNAM"
  FROM student;