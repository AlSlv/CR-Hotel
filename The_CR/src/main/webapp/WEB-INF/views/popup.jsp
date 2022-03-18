<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코로나 안내문</title>
<style>
#popup h1{
text-align: center;
}
#popup{
width:90%;
height:auto;
margin:auto;
}
</style>
<script language="JavaScript">
    function setCookie(name, value, expiredays) {
        var date = new Date();
        date.setDate(date.getDate() + expiredays);
        document.cookie = escape(name) + "=" + escape(value) + "; expires=" + date.toUTCString();
    }

    function closePopup() {
        if (document.getElementById("check").value) {
            setCookie("popupYN", "N", 1);
            self.close();
        }
    }
</script>
</head>
<body>
<div id="popup">
<h1>코로나19 감염병 관련 안내문</h1><br>
<hr>
저희 CR호텔은 코로나 19의 확산을 방지하기 위하여<br>
14일이 경과하지 않은 해외 입국자, 자가격리 대상자, 코로나19 진담검사 수검자,<br>
유증상자의 투숙및 호텔 시설 이용을 제한하오니 양해와 협조 부탁드립니다.<br><br><br>
사전 승인을 받은 격리 예외자는 입국 시 음성으로 판정된 경우에 한하여<br>
호텔 이용이 가능합니다.<br><br><br>
저희 호텔은 시설 전체에 대한 정기적인 방역소독,직원들에 대한 보건용품 지급과<br>
위생 교육 강화 등 고객과 직원의 건강과 안전을 위해 최선을 다하고 있으며<br>
상황이 종식될 때까지 더욱 노력하겠습니다.<br><br><br>
감사합니다.
</div>
<br><input type="checkbox" id="check" onclick="closePopup();">
 오늘 하루 이 창을 다시 열지 않음
</body>
</html>