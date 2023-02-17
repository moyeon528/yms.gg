<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드백 요청 작성 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>


<style>
header {
	display: flex;
	vertical-align: top;
	text-align: right;
	justify-content: right;
	align-items: center;
	height: 100px;
	background: #252a37;
	font-family: 'Raleway', sans-serif;
	font-weight: bold;
}

body {
	color: #000;
	background: #252a37;
	font: 300 1em "Fira Sans", sans-serif;
}

.content-from {
	margin-top: 70px;
}

.content-box {
	padding: 10px;
	margin-top: 28px;
	width: 1110px;
	height: 450px;
	border: 3px solid black;
	font-size: 16px;
	border-radius: 10px;
}
.title-box {
	padding: 10px;
	margin-top: 5px;
	width: 670px;
	height: 50px;
	border: 3px solid black;
	font-weight: bold;
	font-size: large;
	border-radius: 10px;
}
.content-from {
	margin-top: 70px;
}

.gmFbWrite-box {
	position: absolute;
	top: 60%;
	left: 50%;
	width: 1200px;
	padding: 30px;
	transform: translate(-50%, -50%);
	background: rgba(27, 27, 27, 0.5);
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
}

.gmFbWrite-box h2 {
	margin: 0 0 30px;
	font-size: 50px;
	padding: 0;
	color: #fff;
	text-align: center;
}

.small_button {
	border: none;
	background: transparent;
	cursor: pointer;
}



</style>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Nanum Pen Script';
	font-size: 20px;
}

.view {
	position: relative;
	top: -110px;
	left: 35px;
	display: inline-block;
	padding: 25px 30px;
	margin: 40px 0;
	color: #ece6cc;
	text-decoration: none;
	text-transform: uppercase;
	transition: 0.5s;
	letter-spacing: 4px;
	overflow: hidden;
	margin-right: 50px;
}

.view:hover {
	background: #ece6cc;
	color: #050801;
	box-shadow: 0 0 5px #ece6cc, 0 0 25px #ece6cc, 0 0 50px #ece6cc, 0 0
		200px #ece6cc;
	-webkit-box-reflect: below 1px linear-gradient(transparent, #0005);
}

.view span {
	position: absolute;
	display: block;
}

.view span:nth-child(1) {
	top: 0;
	left: 0;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg, transparent, #ece6cc);
	animation: animate1 1s linear infinite;
}



.small_button {
	border: none;
	background: transparent;
	cursor: pointer;
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 0.8rem 2rem;
	overflow: hidden;
	border-radius: 100vmax;
	box-shadow: var(- -shadow-elevation-high);
	transition: box-shadow 0.2s ease-in-out;
}
.small_button::after, .small_button::before {
	content: "";
	position: absolute;
	inset: 0;
	background-color: red;
}
.small_button::before {
	z-index: 1;
	right: -100%;
	background: linear-gradient(to right, #dba34e 0%, #fff785 50%, #ebd05a 100%);
	background-size: 50% 100%;
	-webkit-animation: scroll 1.2s infinite linear;
	animation: scroll 1.2s infinite linear;
}
.small_button::after {
	z-index: 2;
	inset: 5px;
	border-radius: 100vmax;
	background-color: black;
	transition: inset 0.2s ease-in-out;
}
.small_button span {
	z-index: 3;
	color: white;
	text-transform: uppercase;
}
.small_button:hover {
	box-shadow: var(- -shadow-elevation-medium);
}

.small_button:hover::after {
	inset: 8px;
}
button:hover, button:focus {
	border-color: var(- -hover);
	color: #fff;
}


.list_button {
	background:linear-gradient(to bottom, #f9f9f9 5%, #e9e9e9 100%);
	background-color:#f9f9f9;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#666666;
	font-size:17px;
	padding:6px 24px;
	text-decoration:none;
}
.list_button:hover {
	background:linear-gradient(to bottom, #e9e9e9 5%, #f9f9f9 100%);
	background-color:#545151;
}
.list_button:active {
	position:relative;
	top:1px;
}

</style>


<a href="main"><img src="resources/img/yms.png"
	style="width: 200px; height: 200px"></a>

<header>
	<a href="mmLoginMv" class="view" id="log">
		<span></span> 
		<span></span>
		<span></span> 
		<span></span> 
			log
	</a>
	<a href="cmMyPageMv" class="view" id = mypage>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
           myPage
    </a>
	
</header>

<div id="loading_wrapper">
	<img src="resources/img/loadingImg.gif" class="loadingImg">
</div>


<body>
	<form action="gmFbReqWrite" id="gmFbReqWriteFrm" method="post">
		<div class="gmFbWrite-box">
			<h2>피드백 요청 작성하기</h2>
			<table class="content-from">
				<tr>
					<td><input type="text" id="fb_req_title" name="fb_req_title"
						placeholder="제목" class="title-box"></td>
					<td><button type="submit" class="small_button" id="insertBt"
							name="insertBt">
							<span>요청하기</span>
						</button></td>
					<td><button type="button"
							onclick="location.href='gmFeedbackList'" class="small_button">
							<span>피드백 목록</span>
						</button></td>

				</tr>
				<tr>

					<td colspan="3"><textarea name="fb_req_contents" cols="105"
							rows="20" placeholder="내용" class="content-box"></textarea></td>
				</tr>
				<tr>
					<td>
						<button id="myGameList_bt" type="button" class = "list_button">최근 게임 리스트</button>
					</td>
				</tr>

			</table>
			
			
		<div class="gameList_View" id="gameList_View"
			style="overflow: scroll; height: 300px;"></div>
		</div>

	</form>
</body>

<script type="text/javascript">
	// 로딩 이미지 숨겨놓음
	$("#loading_wrapper").hide();
	
	var check = 'fbGrList';
	var summonerName = "<%=(String) session.getAttribute("summonerName")%>";
	
	$("#myGameList_bt").click(function(){
		$("#gameList_View").addClass('open'); // 모달박스 나타남	

		var obj = {
				"gr_summonerName" : summonerName,
				"page" : 0
				};
		console.log(obj);
		
		if (summonerName.length > 2) { 
			
			$.ajax({
				type : 'post' , 
				url : 'http://127.0.0.1:5000/grInsert' , 
				data : obj,
				dataType : 'json',
				success : function (data) {
					grAj("grList" , "#gameList_View", summonerName ,check);
					console.log(check);
					console.log(summonerName);
				},
				beforeSend : function(){
					$("#loading_wrapper").show();
			    },
				complete:function(){
					$("#loading_wrapper").hide();
			    },
				error : function (error){
					grAj("grList" , "#gameList_View", summonerName ,check);
				}
		}); // ajax
		$(function(){
			$("#gameList_View").fadeIn();}
		)
		
	};
	});// 클릭 함수
	
	
//	$(function(){  
		
		//모달박스 해제
//			var $layerWindow=$('#articleView_layer');
//			$layerWindow.find("#bg_layer").on('mousedown',function(evt){
//				console.log(evt);
//				$layerWindow.removeClass('open');
//			}); //on End
//			$(document).keydown(function(evt){
//				console.log(evt);
//				if(evt.keyCode!=27) return;
//				else if($layerWindow.hasClass('open')){
//					$layerWindow.removeClass('open');
//				}
//			}); //keydown End
			
//		});//ready End

	
	</script>
<script>
	function grAj(url , position , summonerName , check){
		$.ajax({
			url : url , 
			data : {"gr_summonerName" : summonerName ,  "check" : check},
			type : 'get' , 
			dataType : 'html',
		}).done((data) => {$(position).html(data);})
		.fail((err) => console.log(err));
	} //function
	
	
</script>


<script type="text/javascript">
	$(function() {
		var uid =  "<%=(String) session.getAttribute("id")%>" 
		var $ele = $('#log').children();
		var $ele1 = $('#log').children('a.mypage');
		if (uid  == "null" ) {
			$('#log').html("Login");
			$('#log').append($ele);
			$('#log').prop('href', "mmLoginMv");
		}
		else {
			$('#log').html("Logout");
			$('#join').remove();
			$('#log').append($ele);
			$('#log').prop('href', "cmLogout");	
		}
		})

</script>


</html>