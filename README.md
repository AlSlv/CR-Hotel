# 안녕하세요, 정다은 입니다.

## CR Hotel 팀 프로젝트
* **Spring Framework** 와 **MyBatis, Oracle**로 만든 호텔 예약 사이트 입니다.
* **인원** : 5명
* **기간** : 2021.09.08 ~ 2021.10.18
* **Tool** : Eclipse photon
* **Skills** : JQuery, JavaScript, Html, CSS, JAVA 8, JSP, Servlet


### 내가 맡은 프로젝트 내용 기술


**예약**

예약 검색(reserveStep1.jsp)
 - 메인홈페이지의 예약 검색과 연결, 사용자가 체크인, 체크아웃할 날짜와 객실등급을 검색하고 해당 날짜에 예약 가능한 방 정보(가격, 객실타입) 조회, 방 예약할 시 로그인 페이지 이동(비회원 예약 불가능)

예약하기
 - 유의사항, 취소 및 환불 규정 안내 및 예약자 이름과 전화번호, 인원 수(최대 4명), 요청사항(50자 이내)을 입력받아 결제창 호출

결제하기(아임포트 API 사용)
- 객실 타입별 1박 기준으로 가격 적용, 결제 후 예약번호 생성하고 사용자가 입력한 예약 정보를 reserve 테이블에 insert

 마이페이지
- 예약확인 : 저장된 session에서 id 값을 이용하여 reserve 테이블에서 id와 일치한 정보 조회, 예약 취소 기능(예약 시 입력받는 요청사항 값을 ‘환불 요청’으로 변경하여 관리자가 직접 결제 취소 및 예약 취소)

**관리자 페이지**
- ID : manager로 로그인, 객실 추가, 수정, 삭제 & 예약 조회


### DB 설계
<pre>
CREATE TABLE RESERVE (
res_no VARCHAR2(20) PRIMARY KEY, --예약번호
rnum NUMBER(5), --객실 호수
CONSTRAINT reserve_rnum_fk FOREIGN KEY(rnum) REFERENCES room(rnum)
ON DELETE CASCADE,
id VARCHAR2(20) NOT NULL, --아이디
CONSTRAINT reserve_id_fk FOREIGN KEY(id) REFERENCES h_member(id),
rname VARCHAR2(15) ,  --예약자 성함
rtel VARCHAR2(20) NOT NULL,   --예약자 전화번호
ckin DATE, --체크인 날짜
ckout DATE, --체크아웃 날짜
rmname VARCHAR2(20), --객실명
people NUMBER(2),   --인원수
require VARCHAR2(150),  --요청사항
price NUMBER(7) --가격
);
</pre>


예약 하기 : res_no, rnum, id, rname, rtel, ckin, ckout, rmname, people, require, price 입력받고 저장

예약 검색 시, 예약이 가능한 방 조회 : 저장된 ckin이 입력받은 ckin과 ckout값 사이에 있거나 저장된 ckout이 입력받은 ckin과 ckout 사이에 있는 rnum(객실 호수)를 포함하지 않으며 저장된 rmname(객실 타입)과 입력받은 rmname 일치 여부를 조건으로 room table에서 조회

내 예약 조회 : 저장된 id를 조건으로 조회

예약 취소 : res_no(pk)를 조건으로 require을 ‘환불 요청’으로 변경

관리자의 예약내역 전체목록 중에서 검색 : rname과 id가 입력받은 값에 포함되어있거나 ckin 혹은 ckout이 입력받은 값 사이에 있는지 비교하여 조회

예약 현황 : ckin과 ckout이 오늘 날짜와 비교하여 전체조회

<pre>
CREATE TABLE ROOM (
rnum NUMBER(5) primary key,--객실 호수
rmname VARCHAR2(60),--객실명
roomPrice NUMBER(7)--가격
);
</pre>
> **room 테이블에서 rmname 변경 시 reserve 테이블 rmname도 변경 트리거**
<pre>
CREATE OR REPLACE TRIGGER room_trigger 
AFTER UPDATE OF rmname ON room
FOR EACH ROW 
BEGIN
    UPDATE reserve
    SET rmname = :NEW.rmname
    WHERE rnum = :OLD.rnum;
END;
/
</pre>
객실 전체 조회 : rownum 사용하여 room table 전체조회

객실 조회/수정/삭제 : rnum 을 조건으로 조회, 수정 및 삭제

객실 추가 : rnum, rmname, roomPrice 값 입력받아 저장





### 기여도

예약/객실
- 프론트(47%) : 사용자의 예약 검색, 예약하기 Table Form
- 백엔드(50%) : 사용자의 예약 검색 및 입력, 사용자의 예약확인, 결제
- DB(50%) : 예약/객실 정보 DB 작성
- 전체 기여도(20%)- 프론트(20%), 백(20%), 아이디어(20%)
