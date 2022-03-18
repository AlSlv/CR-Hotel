//방 삭제 
function deleteRoom(rnum){
   var answer = confirm("정말 삭제하시겠습니까?");
   if(answer) {
	   var url = "roomDelete.do?rnum="+rnum.value;
	   window.open(url,"_self",'');
   }
}

// 회원 삭제 
function deletemember(id){
	
   var answer = confirm(id + " 님을 정말 삭제하시겠습니까? 예약내역도 함께 삭제됩니다.");
   if(answer) {
	   var url = "deletemember.do?id="+id;
	   window.open(url,"_self",'');
   }
}