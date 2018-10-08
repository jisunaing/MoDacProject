
/* Drop Tables */

DROP TABLE whosefamily CASCADE CONSTRAINTS;
DROP TABLE genfamily CASCADE CONSTRAINTS;
DROP TABLE healthanswer CASCADE CONSTRAINTS;
DROP TABLE healthquestion CASCADE CONSTRAINTS;
DROP TABLE replyqna CASCADE CONSTRAINTS;
DROP TABLE qna CASCADE CONSTRAINTS;
DROP TABLE reception CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE genmember CASCADE CONSTRAINTS;
DROP TABLE healthinfo CASCADE CONSTRAINTS;
DROP TABLE healthinfocategory CASCADE CONSTRAINTS;
DROP TABLE healthstate CASCADE CONSTRAINTS;
DROP TABLE hossubject CASCADE CONSTRAINTS;
DROP TABLE preplyqna CASCADE CONSTRAINTS;
DROP TABLE pqna CASCADE CONSTRAINTS;
DROP TABLE tempdayoff CASCADE CONSTRAINTS;
DROP TABLE partners CASCADE CONSTRAINTS;
DROP TABLE hospital CASCADE CONSTRAINTS;
DROP TABLE managers CASCADE CONSTRAINTS;
DROP TABLE nightpharmacy CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE pharmacy CASCADE CONSTRAINTS;
DROP TABLE subject CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE genfamily
(
	-- seq
	-- 
	fno number NOT NULL,
	fname nvarchar2(10) NOT NULL,
	fbirthdate char(10) NOT NULL,
	fgender char NOT NULL,
	fphone char(11),
	PRIMARY KEY (fno)
);


CREATE TABLE genmember
(
	-- 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	genname nvarchar2(10) NOT NULL,
	birthdate char(10) NOT NULL,
	gender char NOT NULL,
	email varchar2(30),
	joindate date DEFAULT SYSDATE,
	addr nvarchar2(100) NOT NULL,
	phone char(11) NOT NULL,
	PRIMARY KEY (genid)
);


CREATE TABLE healthanswer
(
	ano nvarchar2(50) NOT NULL,
	atitle nvarchar2(50) NOT NULL,
	apostdsate date DEFAULT SYSDATE,
	qno number NOT NULL,
	pid varchar2(20) NOT NULL,
	PRIMARY KEY (ano)
);


CREATE TABLE healthinfo
(
	-- 건강정보글seq번호
	healthinfono number NOT NULL,
	-- 카테고리seq번호
	categno number NOT NULL,
	title nvarchar2(30) NOT NULL,
	contents nvarchar2(2000),
	postdate date DEFAULT SYSDATE,
	PRIMARY KEY (healthinfono)
);


CREATE TABLE healthinfocategory
(
	-- 카테고리seq번호
	categno number NOT NULL,
	explanation nvarchar2(1000),
	categname nvarchar2(20) NOT NULL,
	PRIMARY KEY (categno)
);


CREATE TABLE healthquestion
(
	qno number NOT NULL,
	subjectcode  NOT NULL,
	postdate date DEFAULT SYSDATE,
	title nvarchar2(50) NOT NULL,
	-- 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	PRIMARY KEY (qno)
);


CREATE TABLE healthstate
(
	-- 가족번호 또는 일반사용자아이디
	hsid varchar2(20) NOT NULL,
	height float NOT NULL,
	weight float NOT NULL,
	medicine nvarchar2(100),
	bloodtype char(4) NOT NULL,
	pregnant char,
	etc nvarchar2(300),
	PRIMARY KEY (hsid)
);


CREATE TABLE hospital
(
	-- seq
	hosno number NOT NULL,
	hosaddr nvarchar2(100) NOT NULL,
	hosname nvarchar2(50) NOT NULL,
	hosphone char(13) NOT NULL,
	mon char(10),
	tue char(10),
	wed char(10),
	thu char(10),
	fri char(10),
	sat char(10),
	sun char(10),
	holiday char(10),
	PRIMARY KEY (hosno)
);


CREATE TABLE hossubject
(
	subjectcode number NOT NULL,
	-- seq
	hosno number NOT NULL
);


CREATE TABLE managers
(
	mid varchar2(20) NOT NULL,
	mname nvarchar2(10) NOT NULL,
	mpwd  NOT NULL,
	PRIMARY KEY (mid)
);


CREATE TABLE nightpharmacy
(
	-- seq
	-- 
	nphno number NOT NULL,
	nphname nvarchar2(50) NOT NULL,
	nphaddr nvarchar2(100) NOT NULL,
	npholiday char,
	nphhours char(10) NOT NULL,
	nphphone varchar2(11) NOT NULL,
	PRIMARY KEY (nphno)
);


CREATE TABLE notice
(
	-- 공지사항seq번호
	no number NOT NULL,
	title nvarchar2(10) NOT NULL,
	postdate date DEFAULT SYSDATE,
	-- 
	-- 
	contents nvarchar2(2000),
	PRIMARY KEY (no)
);


CREATE TABLE partners
(
	pid varchar2(20) NOT NULL,
	-- seq
	hosno number NOT NULL,
	pemail varchar2(30) NOT NULL,
	hpwd varchar2(20) NOT NULL,
	businessnum char(12) NOT NULL,
	request nvarchar2(300),
	-- Y/N
	accept char(1) DEFAULT 'N' NOT NULL,
	info nvarchar2(500),
	hosmanager nvarchar2(10) NOT NULL,
	hosphone char(11) NOT NULL,
	lunch char(10),
	pwebsite varchar2(50),
	PRIMARY KEY (pid)
);


CREATE TABLE pharmacy
(
	-- seq
	-- 
	phno number NOT NULL,
	phname nvarchar2(50) NOT NULL,
	phaddr nvarchar2(100) NOT NULL,
	pholiday char,
	phhours char(10) NOT NULL,
	phphone varchar2(11) NOT NULL,
	PRIMARY KEY (phno)
);


CREATE TABLE pqna
(
	-- seq
	no number NOT NULL,
	pid varchar2(20) NOT NULL,
	title nvarchar2(50) NOT NULL,
	contents nvarchar2(2000) NOT NULL,
	postadate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (no)
);


CREATE TABLE preplyqna
(
	rno number NOT NULL,
	-- seq
	no number NOT NULL,
	rcontents nvarchar2(2000) NOT NULL,
	replydate date DEFAULT SYSDATE,
	PRIMARY KEY (rno)
);


CREATE TABLE qna
(
	-- seq
	no number NOT NULL,
	title nvarchar2(50) NOT NULL,
	contents nvarchar2(2000) NOT NULL,
	postadate date DEFAULT SYSDATE NOT NULL,
	-- 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	PRIMARY KEY (no)
);


CREATE TABLE reception
(
	-- 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	pid varchar2(20) NOT NULL,
	-- seq
	recnum number NOT NULL,
	recname nvarchar2(10) NOT NULL,
	email varchar2(30),
	phone char(11),
	reccontents nvarchar2(500),
	addr nvarchar2(100) NOT NULL
);


CREATE TABLE replyqna
(
	rno number NOT NULL,
	rcontents nvarchar2(2000) NOT NULL,
	replydate date DEFAULT SYSDATE,
	-- seq
	no number NOT NULL,
	PRIMARY KEY (rno)
);


CREATE TABLE reservation
(
	-- seq
	resnum number NOT NULL,
	-- 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	pid varchar2(20) NOT NULL,
	resname nvarchar2(10) NOT NULL,
	rescontents nvarchar2(500),
	resname nvarchar2(10) NOT NULL,
	phone char(11) NOT NULL,
	addr nvarchar2(100) NOT NULL,
	resaccept nvarchar2(15) DEFAULT '예약대기중' NOT NULL,
	resdate char(22) NOT NULL,
	email varchar2(30),
	PRIMARY KEY (resnum)
);


CREATE TABLE subject
(
	subjectcode number NOT NULL,
	subname nvarchar2(20) NOT NULL,
	PRIMARY KEY (subjectcode)
);


CREATE TABLE tempdayoff
(
	pid varchar2(20) NOT NULL,
	off varchar2(30),
	-- 마지막날 이후 자동으로 삭제하기 위함
	lastdate  NOT NULL
);


CREATE TABLE whosefamily
(
	-- 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	-- seq
	-- 
	fno number
);



/* Create Foreign Keys */

ALTER TABLE whosefamily
	ADD FOREIGN KEY (fno)
	REFERENCES genfamily (fno)
;


ALTER TABLE healthquestion
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE qna
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE reception
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE whosefamily
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE healthinfo
	ADD FOREIGN KEY (categno)
	REFERENCES healthinfocategory (categno)
;


ALTER TABLE healthanswer
	ADD FOREIGN KEY (qno)
	REFERENCES healthquestion (qno)
;


ALTER TABLE hossubject
	ADD FOREIGN KEY (hosno)
	REFERENCES hospital (hosno)
;


ALTER TABLE partners
	ADD FOREIGN KEY (hosno)
	REFERENCES hospital (hosno)
;


ALTER TABLE healthanswer
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE pqna
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE reception
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE tempdayoff
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE preplyqna
	ADD FOREIGN KEY (no)
	REFERENCES pqna (no)
;


ALTER TABLE replyqna
	ADD FOREIGN KEY (no)
	REFERENCES qna (no)
;


ALTER TABLE hossubject
	ADD FOREIGN KEY (subjectcode)
	REFERENCES subject (subjectcode)
;



/* Comments */

COMMENT ON COLUMN genfamily.fno IS 'seq
';
COMMENT ON COLUMN genmember.genid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN healthinfo.healthinfono IS '건강정보글seq번호';
COMMENT ON COLUMN healthinfo.categno IS '카테고리seq번호';
COMMENT ON COLUMN healthinfocategory.categno IS '카테고리seq번호';
COMMENT ON COLUMN healthquestion.genid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN healthstate.hsid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN hospital.hosno IS 'seq';
COMMENT ON COLUMN hossubject.hosno IS 'seq';
COMMENT ON COLUMN nightpharmacy.nphno IS 'seq
';
COMMENT ON COLUMN notice.no IS '공지사항seq번호';
COMMENT ON COLUMN notice.contents IS '
';
COMMENT ON COLUMN partners.hosno IS 'seq';
COMMENT ON COLUMN partners.accept IS 'Y/N';
COMMENT ON COLUMN pharmacy.phno IS 'seq
';
COMMENT ON COLUMN pqna.no IS 'seq';
COMMENT ON COLUMN preplyqna.no IS 'seq';
COMMENT ON COLUMN qna.no IS 'seq';
COMMENT ON COLUMN qna.genid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN reception.genid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN reception.recnum IS 'seq';
COMMENT ON COLUMN replyqna.no IS 'seq';
COMMENT ON COLUMN reservation.resnum IS 'seq';
COMMENT ON COLUMN reservation.genid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN tempdayoff.lastdate IS '마지막날 이후 자동으로 삭제하기 위함';
COMMENT ON COLUMN whosefamily.genid IS '가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN whosefamily.fno IS 'seq
';



