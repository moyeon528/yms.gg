<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');
* {font-family: 'Nanum Pen Script';}

html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#252a37,#252a37);
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(27, 27, 27, 0.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
  font-size:20px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 20px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 20px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 18px;
}


.button {
  border: none;
  background: transparent;
  cursor: pointer;
}
.button:not(:last-child) {
  margin-bottom: 2rem;
}

.button {
  border: none;
  background: transparent;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0.8rem 2rem;
  overflow: hidden;
  border-radius: 100vmax;
  box-shadow: var(--shadow-elevation-high);
  transition: box-shadow 0.2s ease-in-out;
  font-size:20px;
}
.button::after, .button::before {
  content: "";
  position: absolute;
  inset: 0;
  background-color: red;
}
.button::before {
  z-index: 1;
  right: -100%;
  background: linear-gradient(to right, #9900F0 0%, #FF85B3 50%, #9900F0 100%);
  background-size: 50% 100%;
  -webkit-animation: scroll 1.2s infinite linear;
          animation: scroll 1.2s infinite linear;
}
.button::after {
  z-index: 2;
  inset: 5px;
  border-radius: 100vmax;
  background-color: black;
  transition: inset 0.2s ease-in-out;
}
.button span {
  z-index: 3;
  color: white;
  text-transform: uppercase;
}
.button:hover {
  box-shadow: var(--shadow-elevation-medium);
}
.button:hover::after {
  inset: 8px;
}

@charset "UTF-8";
*, *:before, *:after {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.arrow-btn {
  position: relative;
  display: inline-block;
  border-radius: 0;
  color: #b2876f;
  font-size: 0.8rem;
  letter-spacing: 2px;
  text-decoration: none;
  transition: 700ms cubic-bezier(0.165, 0.84, 0.44, 1);
  padding-right: 2.5em;
  font-size:20px;
  background-color: transparent;
  border: none;
}
.arrow-btn:hover {
  transition: 400ms cubic-bezier(0.165, 0.84, 0.44, 1);
}
.arrow-btn:hover:after {
  transition: 400ms cubic-bezier(0.165, 0.84, 0.44, 1);
  transform: translateX(15px);
  opacity: 0;
}
.arrow-btn:hover:before {
  transition: 700ms cubic-bezier(0.165, 0.84, 0.44, 1);
  transform: translateX(0);
  opacity: 1;
}
.arrow-btn:before, .arrow-btn:after {
  content: "???";
  position: absolute;
  right: -10px;
}
.arrow-btn:before {
  transform: translateX(-15px);
  opacity: 0;
}
.arrow-btn:after {
  transform: none;
}

</style>

<body>
<a href="main"><img src="resources/img/yms.png" style = "width:200px; height:200px"></a>

   <div class="login-box">
      <form name="mmJoinFrm" action="mmJoin" method="post">
         <div class="user-box">
            <input type="text" id="m_id" name="m_id" required=""> <label>?????????</label>
            <button class="arrow-btn"  type="button" id="m_idCheck">
            <span id="m_idCheckMsg">ID ????????????</span>
            </button>
         </div>
         <br>
         <div class="user-box">
            <input type="password" id="m_pw" name="m_pw" class="pw" required=""> <label>????????????</label>
            <span id="m_pwCheckMsg"></span>
         </div>
         <br>
         <div class="user-box">
            <input type="password" id="m_pwCheck2" name="m_pwCheck2" class="pw" required=""> <label>??????????????????</label>
            <span id="m_pwCheckMsg2"></span>
         </div>
         <br>
         <div class="user-box">
            <input type="text" id="m_name" name="m_name" required=""> <label>??????</label>
            <span id="m_nameCheckMsg"></span>
         </div>
         <div class="user-box">
            <input type="text" id="m_summonerName" name="m_summonerName" required=""> <label>????????? ?????????</label>
            <span id="m_summonerNameCheckMsg"></span>
         </div>
         <div class="user-box">
            <input type="text" id="m_email" name="m_email" required=""> <label>?????????</label>
            <span id="m_emailCheckMsg"></span>
         </div>
         <br>
         <div class="user-box">
            <input type="text" id="m_birth" name="m_birth"  required=""> <label>????????????(6??????)</label>
            <span id="m_birthCheckMsg"></span>
         </div>
         <div class="user-box">
            <input type="text" id="m_phoneNum" name="m_phoneNum" required=""> <label>????????????</label>
            <span id="m_phoneNumCheckMsg"></span>
            <button class="arrow-btn" type="button" id = "mmPhoneCheckMv" style="display:none;">????????? ??????</button>
            <input class= "content" id="phone2" type="text" name="phone2" title="???????????? ??????" style="display:none;"/><br>
            <button id="phoneChk2" type="button" class="arrow-btn" style="display:none;">????????????</button>
            <span id="m_CheckMsg" style="display:none;"></span>
         </div>
         
         <div class="buttons">
         <br>
        <button id="joinBtn" class="button" type="submit" disabled="disabled">
          <span>????????????</span>
        </button>
         </div>

      </form>
   </div>
   
<script type="text/javascript">
//?????? ????????? ??? ?????? ??????????????? ???????????? ?????? ?????????
$("#m_phoneNum").focusout(function() {
   var m_phoneNum = $("#m_phoneNum").val();
   if(m_phoneNum.length == 11) {
       $("#m_phoneNumCheckMsg").text("????????? ????????? ???????????????.");
       $("#m_phoneNumCheckMsg").css("color","green");
       $("#mmPhoneCheckMv").show();
       $("#phone2").show();       
       $("#phoneChk2").show();       
       $("#m_idCheckMsg").show();       
   }else{
       $("#m_phoneNumCheckMsg").text("????????? ????????? ???????????? ????????????.");
         $("#m_phoneNumCheckMsg").css("color","red");
         $("#mmPhoneCheckMv").hide();
   }
});

//????????? ??????
var code2 = "";
$("#mmPhoneCheckMv").click(function(){
   alert("???????????? ????????? ?????????????????????.\n??????????????? ???????????? ????????? ???????????????.");
   var phone = $("#m_phoneNum").val();
   $.ajax({
        type:"GET",
        url:"mmPhoneCheck?m_phoneNum=" + phone,
        cache : false,
        success:function(data){
           if(data == "error"){
              alert("????????? ????????? ???????????? ????????????.")
            $("m_CheckMsg").text("????????? ????????? ??????????????????.");
            $("m_CheckMsg").css("color","red");
            $("#m_phoneNum").attr("autofocus",true);
           }else{                 
              $("#phone2").attr("disabled",false);
              $("#phoneChk2").css("display","inline-block");
              $("#m_CheckMsg").text("??????????????? ????????? ??? ??????????????? ??????????????????.");
              $("#m_CheckMsg").css("color","green");
              $("#m_phoneNum").attr("readonly",true);
              code2 = data;
           }
        }
    });
});

$("#phoneChk2").click(function(){
   if($("#phone2").val() == code2){
      alert("??????????????? ???????????????.");
      $("#m_CheckMsg").css("color","green");
      $("#phoneDoubleChk").val("true");
      $("#phone2").attr("disabled",true);
      $("#joinBtn").attr("disabled",false);
   }else{
      $("#m_CheckMsg").text("??????????????? ???????????? ????????????. ?????????????????? ????????????.");
      $("#m_CheckMsg").css("color","red");
      $("#phoneDoubleChk").val("false");
      $(this).attr("autofocus",true);
   }
});

/* ????????? ???????????? */
$("#m_idCheck").click(function() {
   $.ajax({
      url : "mmIdCheck",
      type : "get",
      async: false,
      data : {"m_id" : $("#m_id").val()},
      success : function(data){
         if(data == "1"){
            $("#m_idCheckMsg").text("????????? ??????????????????.");
             $("#m_idCheckMsg").css("color","red");
         }else if(data == "0"){
            $("#m_idCheckMsg").text("?????? ????????? ??????????????????.");
             $("#m_idCheckMsg").css("color","green");
         }
      }
   })
});

/* //???????????? ?????? ?????? ????????? ?????? ?????? ???
$("#phoneCheck").click(function() {
   var phone_num = $("#m_phoneNum").val();
   if(phone_num == '') {
      alert("????????? ????????? ?????? ??????????????????.");
      $("#m_phoneNum").focus();
      return false;
   }else {
      $("#m_phoneNum").attr("disabled", true);
      $("#m_phoneNum").removeAttr("disabled");
   }
});
 */
 
//???????????? ??????
$("#m_pw").focusout(function() {
    var pw = $("#m_pw").val();
    var num = pw.search(/[0-9]/g);
    var eng = pw.search(/[a-z]/ig);
    var spe = pw.search(/[`~!@@#$%^&*|?????????'???";:???/?]/gi);
    if(pw.length < 8 || pw.length > 20){
     $("#m_pwCheckMsg").text("8?????? ~ 20?????? ????????? ??????????????????.");
     $("#m_pwCheckMsg").css("color","red");
     return false;
    }else if(pw.search(/\s/) != -1){
       $("#m_pwCheckMsg").text("??????????????? ?????? ?????? ??????????????????.");
       $("#m_pwCheckMsg").css("color","red");
     return false;
    }else if(num < 0 || eng < 0 || spe < 0 ){
       $("#m_pwCheckMsg").text("??????,??????, ??????????????? ???????????? ??????????????????.");
       $("#m_pwCheckMsg").css("color","red");
     return false;
    }else {
       $("#m_pwCheckMsg").text("?????? ????????? ?????????????????????.");
       $("#m_pwCheckMsg").css("color","green");
       //$("#m_pwResetBtn").attr("disabled", false)
     return true;
    }
});

//???????????? ??????
??$('.pw').focusout(function(){??????
   var m_pw = $('#m_pw').val();
   var m_pwCheck2 = $('#m_pwCheck2').val();
   if ( m_pw != '' && m_pwCheck2 == '' ) {
        null;
   }else if (m_pw != "" || m_pwCheck2 != "") {
        if (m_pw == m_pwCheck2) {
           $("#m_pwCheckMsg2").text("??????????????? ???????????????.");
            $("#m_pwCheckMsg2").css("color","green");
        } else {
           $("#m_pwCheckMsg2").text("??????????????? ???????????? ????????????.");
            $("#m_pwCheckMsg2").css("color","red");
        }
    }
});

//????????? ????????? ??????
var userid = document.querySelector('#m_email')
userid.addEventListener('change',(e)=>{  
    validEmail(e.target)
})

function validEmail(obj){
    console.log(obj)
    if(validEmailCheck(obj)==false){
       $("#m_emailCheckMsg").text("????????? ????????? ????????? ??????????????????.");
      $("#m_emailCheckMsg").css("color","red");
        obj.value='';
        obj.focus();
        return false;
    }else{
       $("#m_emailCheckMsg").text("????????? ????????? ???????????????.");
      $("#m_emailCheckMsg").css("color","green");
    }
}

function validEmailCheck(obj){
    var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    return (obj.value.match(pattern)!=null)
}


</script>
</body>
</html>