# 안녕하세요, 정다은 입니다.

## CR Hotel 팀 프로젝트
* **Spring Framework** 와 **MyBatis, Oracle**로 만든 호텔 예약 사이트 입니다.
* **인원** : 5명
* **기간** : 2021.09.08 ~ 2021.10.18
* **Tool** : Eclipse photon
* **Skills** : JQuery, JavaScript, Html, CSS, JAVA 8, JSP, Servlet

**내가 맡은 프로젝트 내용 기술**

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
