<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
</head>
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
   <button class="w3-bar-item w3-button" onclick="myAccFunc()">햄버거</button>
  <div id="demoAcc" class="w3-bar-block w3-hide w3-white w3-card-4">
    <a href="page2.jsp" class="w3-bar-item w3-button">세트</a>
    <a href="page3.jsp" class="w3-bar-item w3-button">디저트</a>
    <a href="page4.jsp" class="w3-bar-item w3-button">음료수</a>
  </div>

  <button class="w3-bar-item w3-button" onclick="myAccFunc1()">이벤트</button>
  <div id="demoAcc1" class="w3-bar-block w3-hide w3-white w3-card-4">
    <a href="../event/event1.jsp" class="w3-bar-item w3-button">이벤트</a>
    <a href="../event/event2.jsp" class="w3-bar-item w3-button">쿠폰</a>
    <a href="../event/event3.jsp" class="w3-bar-item w3-button">3</a>
  </div>
  
  
  <button class="w3-bar-item w3-button" onclick="myAccFunc2()">고객지원</button>
   <div id="demoAcc2" class="w3-bar-block w3-hide w3-white w3-card-4">
    <a href="page/page2.jsp" class="w3-bar-item w3-button">ㅂ</a>
    <a href="page/page3.jsp" class="w3-bar-item w3-button">ㅈ</a>
    <a href="page/page4.jsp" class="w3-bar-item w3-button">ㄷ</a>
  </div>

	</nav>
<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1300px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">Mail</div>
    <div class="w3-center w3-padding-16">???가게 메뉴</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1300px;margin-top:100px">

<div class="w3-container w3-teal">
  <h1>음료수</h1>
</div>
  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">

    <div class="w3-quarter">
      <img src="../images/cola.jpg" width="300" height="300"  alt="cola" style="width:100%">
      <h3>콜라</h3>
      <p>톡 쏘는 시원 상쾌한 콜라</p>
    </div>

    <div class="w3-quarter">
      <img src="../images/cola1.jpg" width="300" height="300"  alt="cola1" style="width:100%">
		<h3>제로콜라</h3>    
      <p>톡 쏘는 시원 상쾌한 제로콜라</p>
    </div>

    <div class="w3-quarter">
      <img src="../images/saida.jpg" width="300" height="300"  alt="saida" style="width:100%">
      <h3>사이다</h3>
      <p>톡 쏘는 시원 상쾌한 제로콜라</p>

    </div>
    <div class="w3-quarter">
      <img src="../images/saida1.jpg" width="300" height="300"  alt="saida1" style="width:100%">
      <h3>제로사이다</h3>
      <p>톡 쏘는 시원 상쾌한 제로콜라</p>
  </div>
  </div>

  <div class="w3-row-padding w3-padding-16 w3-center">
    <div class="w3-quarter">
      <img src="../images/milkiseu.jpg" width="300"  height="300" alt="milkiseu" style="width:100%">
      <h3>밀키스</h3>
      <p>톡 쏘는 시원 상쾌한 밀키스</p>
    </div>

    <div class="w3-quarter">
      <img src="../images/mauntindyu.jpg" width="300" height="300"  alt="mauntindyu" style="width:100%">
      <h3>마운틴듀</h3>
      <p>톡 쏘는 시원 상쾌한 마운틴듀</p>
    </div>

    <div class="w3-quarter">
      <img src="../images/fanta.jpg" width="300" height="300"  alt="fanta" style="width:100%">
      <h3>환타(포도,파인애플,오렌지)</h3>
      <p>톡 쏘는 시원 상쾌한 마운틴듀</p>
    </div>
 
    <div class="w3-quarter">
      <img src="../images/orange juice.jpg" width="300" height="300"  alt="orange juice" style="width:100%">
      <h3>오렌지주스(PET)</h3>
      <p>갓 짜낸 오렌지의 상큼함을 담은 100% 오렌지주스</p>
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="../main.jsp" class="w3-bar-item w3-black w3-button">1</a>
      <a href="page2.jsp" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="page3.jsp" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="page4.jsp" class="w3-bar-item w3-button w3-hover-black">4</a>
    </div>
  </div>
  
  
  <hr id="about">
  
  <!-- Footer -->

    <div class="w3-third w3-serif">
      <h3>인기 태그</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">???가게 전주점</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">햄버거</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">수제 버거</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">감자튀김</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">치킨버거</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">데리버거</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">불고기버거</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">치즈버거</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">전주 맛집</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">키오스크</span>
      </p>
    </div>

<!-- End page content -->
</div>




<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}

function myAccFunc() {
	  var x = document.getElementById("demoAcc");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	    x.previousElementSibling.className += " w3-green";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	    x.previousElementSibling.className = 
	    x.previousElementSibling.className.replace(" w3-green", "");
	  }
	}

function myAccFunc1() {
	  var x = document.getElementById("demoAcc1");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	    x.previousElementSibling.className += " w3-green";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	    x.previousElementSibling.className = 
	    x.previousElementSibling.className.replace(" w3-green", "");
	  }
	}

function myAccFunc2() {
	  var x = document.getElementById("demoAcc2");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	    x.previousElementSibling.className += " w3-green";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	    x.previousElementSibling.className = 
	    x.previousElementSibling.className.replace(" w3-green", "");
	  }
	}

</script>


</body>
</html>
