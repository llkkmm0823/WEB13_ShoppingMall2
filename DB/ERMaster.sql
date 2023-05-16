
/* Drop Triggers */

DROP TRIGGER TRI_qna_qseq;



/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE qna CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE worker CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_qna_qseq;




/* Create Sequences */

CREATE SEQUENCE SEQ_qna_qseq INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE address
(
	-- 우편번호(지번주소)
	zip_num varchar2(7) NOT NULL,
	sido varchar2(30) NOT NULL,
	gugun varchar2(30) NOT NULL,
	zip_code varchar2(30),
	bunji varchar2(0)
);


CREATE TABLE cart
(
	cseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	pseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	result char(1) DEFAULT '''1''' NOT NULL,
	indate date DEFAULT sysdate,
	PRIMARY KEY (cseq)
);


CREATE TABLE member
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(40) NOT NULL,
	zip_num varchar2(7),
	address1 varchar2(50),
	address2 varchar2(50),
	indate date DEFAULT sysdate,
	useyn char(1) DEFAULT '"Y"',
	PRIMARY KEY (id)
);


CREATE TABLE orders
(
	oseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	indate date DEFAULT sysdate,
	PRIMARY KEY (oseq)
);


CREATE TABLE order_detail
(
	odseq number(10,0) NOT NULL,
	oseq number(10,0) NOT NULL,
	pseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	result char(1) DEFAULT '''1''',
	PRIMARY KEY (odseq)
);


CREATE TABLE product
(
	pseq number(5,0) NOT NULL,
	name varchar2(100) NOT NULL,
	kind char(1) NOT NULL,
	price1 number(7,0) NOT NULL,
	price2 number(7,0) NOT NULL,
	price3 number(7,0) NOT NULL,
	content varchar2(1000) NOT NULL,
	image varchar2(255) NOT NULL,
	useyn char(1) DEFAULT '"Y"',
	bestyn char(1) DEFAULT '"Y"',
	indate date DEFAULT sysdate,
	PRIMARY KEY (pseq)
);


CREATE TABLE qna
(
	qseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	subject varchar2(100) NOT NULL,
	content varchar2(1000) NOT NULL,
	reply varchar2(0),
	rep char(1) DEFAULT '1',
	indate date DEFAULT sysdate,
	PRIMARY KEY (qseq)
);


CREATE TABLE worker
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	PRIMARY KEY (id)
);



/* Create Foreign Keys */

ALTER TABLE cart
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE orders
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE qna
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (oseq)
	REFERENCES orders (oseq)
;


ALTER TABLE cart
	ADD FOREIGN KEY (pseq)
	REFERENCES product (pseq)
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (pseq)
	REFERENCES product (pseq)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_qna_qseq BEFORE INSERT ON qna
FOR EACH ROW
BEGIN
	SELECT SEQ_qna_qseq.nextval
	INTO :new.qseq
	FROM dual;
END;

/




/* Comments */

COMMENT ON COLUMN address.zip_num IS '우편번호(지번주소)';



