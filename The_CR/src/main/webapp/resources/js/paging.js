$(function(){
	var totalData; //총 데이터 수
	var dataPerPage; //한 페이지에 나타낼 글 수
	var pageCount = 5; //페이징에 나타낼 페이지 수
	var GcurrentPage=1; //현재 페이지
	
	$.ajax({
		method:"GET",
		url:"https://url/data?"+data,
		dataType:"json",
		succes:function(d){
			totalData = d.data.length;
		}
	});
	
	//글목록표시 호출(테이블생성)
	displayData(1, dataPerPage);
	
	pagin(totalData,dataPerPage,pageCount,1);
	
	$("#dataPerPage").change(function () {
	    dataPerPage = $("#dataPerPage").val();
	    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
	    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
	    displayData(globalCurrentPage, dataPerPage);
	 });
});

function paging(totalData, dataPerPage, pageCount, currentPage){
	 console.log("currentPage : " + currentPage);

	  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
	  
	  if(totalPage<pageCount){
	   pageCount=totalPage;
	  }
	  
	  var pageGroup = Math.ceil(currentPage / pageCount); //페이지그룹
	  var last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
	  
	  if(last > totalPage){
		  last = totalPage;
	  }
	  
	  var first = last - (pageCounnt -1);//화면에 보여질 첫번째 페이지 번호
	  var next = last + 1;
	  var prev = first - 1;
	  
	  var pageHtml = "";
	  
	  if(prev > 0 ) {
		  pageHtml += "<li><a href='#' id='prev'> 이전 </a></li>";
	  }
	  
	//페이징 번호 표시 
	  for (var i = first; i <= last; i++) {
	    if (currentPage == i) {
	      pageHtml +=
	        "<li class='on'><a href='#' id='" + i + "'>" + i + "</a></li>";
	    } else {
	      pageHtml += "<li><a href='#' id='" + i + "'>" + i + "</a></li>";
	    }
	  }

	  if (last < totalPage) {
	    pageHtml += "<li><a href='#' id='next'> 다음 </a></li>";
	  }
	  
	  $("#pagingul").html(pageHtml);
	  var displayCount = "";
	  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
	  $("#displayCount").text(displayCount);


	  //페이징 번호 클릭 이벤트 
	  $("#pagingul li a").click(function () {
	    var $id = $(this).attr("id");
	    selectedPage = $(this).text();

	    if ($id == "next") selectedPage = next;
	    if ($id == "prev") selectedPage = prev;
	    
	    //전역변수에 선택한 페이지 번호를 담는다...
	    globalCurrentPage = selectedPage;
	    //페이징 표시 재호출
	    paging(totalData, dataPerPage, pageCount, selectedPage);
	    //글 목록 표시 재호출
	    displayData(selectedPage, dataPerPage);
	  });
	  
}

//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
function displayData(currentPage, dataPerPage) {

  var chartHtml = "";

//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
  currentPage = Number(currentPage);
  dataPerPage = Number(dataPerPage);
  
  for (
    var i = (currentPage - 1) * dataPerPage;
    i < (currentPage - 1) * dataPerPage + dataPerPage;
    i++
  ) {
    chartHtml +=
      "<tr><td>" +
      dataList[i].d1 +
      "</td><td>" +
      dataList[i].d2 +
      "</td><td>" +
      dataList[i].d3 +
      "</td></tr>";
  }
  $("#dataTableBody").html(chartHtml);
}