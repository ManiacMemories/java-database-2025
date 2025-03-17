/*
* 시퀀스, 자동증가되는 값
*/

CREATE TABLE order_noseq (
	order_idx NUMBER PRIMARY KEY,
	order_nm varchar(20) NOT NULL,
	ORDER_prd varchar(20) NOT NULL,
	qty			NUMBER DEFAULT 1
);

CREATE TABLE order_seq (
	order_idx NUMBER PRIMARY KEY,
	order_nm varchar(20) NOT NULL,
	ORDER_prd varchar(20) NOT NULL,
	qty			NUMBER DEFAULT 1
);

COMMIT;

-- 시퀀스 생성
CREATE SEQUENCE S_order
INCREMENT BY 1
START WITH 1;

-- 시퀀스 없는 order_noseq
INSERT INTO order_noseq VALUES (1, '홍길동', '망고', 20);
INSERT INTO order_noseq VALUES (2, '홍길동', '망고', 10);
INSERT INTO order_noseq VALUES (3, '홍길순', '블루베리', 2);

-- 시퀀스쓰면 order_seq
INSERT INTO order_seq VALUES (S_order.nextval, '홍길동','애플망고',10);

COMMIT;

SELECT * FROM order_seq;

-- 시퀀스 개체와 현재번호가 얼마인지 확인
SELECT S_order.currval FROM dual;
SELECT S_order.nextval FROM dual;

-- 시퀀스 삭제
DROP SEQUENCE S_order;

COMMIT;