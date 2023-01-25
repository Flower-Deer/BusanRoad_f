<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부산로드 챗봇입니다</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../resources/js/sockjs-0.3.4.js"></script>
<script type="text/javascript" src="../resources/js/stomp.js"></script>
<script type="text/javascript"
	src="../resources/js/webSocketSendToUserApp.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var stompClient = null;

	function setConnected(connected) { //연결 여부에 따라 설정 
		document.getElementById('response').innerHTML = '';
	}

	//서버로 연결함. 
	function connect() {
		//chat주소 서버와의 소켓객체 생성
		var socket = new SockJS('${pageContext.request.contextPath}/chat');
		//소켓을 통해 클라이언트 객체 획득 
		stompClient = Stomp.over(socket);
		//소켓 클라이언트를 통해 연결 획득 
		stompClient.connect({}, function(frame) {
			setConnected(true); //연결 설정 
			console.log('Connected: ' + frame);
			stompClient.subscribe('/topic/messages', function(messageOutput) {
				//서버에서 받은 메시지 출력 
				showMessageOutput(JSON.parse(messageOutput.body));
			});
		});
	}

	//서버로 연결 끊음. 
	function disconnect() {
		if (stompClient != null) {
			stompClient.disconnect();
		}
		setConnected(false); //연결끊어졌을 때 설정 변경 
		console.log("Disconnected");
	}

	//서버로 메세지 보냄 
	function sendMessage() {
		//입력한 정보를 가지고 와서 
		var from = "guest";
		var text = document.getElementById('text').value;

		stompClient.send("/app/chat", {}, JSON.stringify({
			'from' : from,
			'text' : text
		}));
	}

	//받은 데이터를 원하는 위치에 넣음. 
	function showMessageOutput(messageOutput) {
		var response = document.getElementById('response');
		var p = document.createElement('p');
		p.style.wordWrap = 'break-word';
		p.appendChild(document.createTextNode(messageOutput.menu));
		response.appendChild(p);
		document.getElementById('text').innerHTML = '';
	}
</script>
<script>
	function test() {
		$('#text').val('');
	}
</script>
<style type="text/css">
section {
	max-width: 450px;
	margin: 1px auto;
}

section div {
	max-width: 500px;
	word-wrap: break-word;
	margin-bottom: 20px;
	line-height: 24px;
	font-family: 'GmarketSansMedium';
	font-size: 15px;
}

.clear {
	clear: both;
}

.from-them {
	position: relative;
	padding: 10px 20px;
	background: #E5E5EA;
	border-radius: 25px;
	color: black;
	float: left;
}

.from-them:before {
	content: "";
	position: absolute;
	z-index: 2;
	bottom: -2px;
	left: -7px;
	height: 20px;
	border-left: 20px solid #E5E5EA;
	border-bottom-right-radius: 16px 14px;
	-webkit-transform: translate(0, -2px);
}

.from-them:after {
	content: "";
	position: absolute;
	z-index: 3;
	bottom: -2px;
	left: 4px;
	width: 26px;
	height: 20px;
	background: white;
	border-bottom-right-radius: 10px;
	-webkit-transform: translate(-30px, -2px);
}
}
</style>
</head>
<body onload="connect();">
	<div style="width: 50px; float: left;"></div>
	<div style="width: 400px; float: left;">
		<div class="alert alert-danger"
			style="width: 100%; height: 50px; background-color: #315A9E; float: left; margin: 0px; font-family: 'GmarketSansMedium'; border: 0.5px solid #315A9E;">
			<div style="align-items: center;">
				<h5 style="color: white;">
					<a onclick="location.href='chatbot.jsp'">부산로드 </a>
				</h5>
			</div>
		</div>
		<div class="alert alert-danger"
			style="width: 100%; background-color: white; float: left; margin: 0px; border: 0.5px solid #315A9E; font-family: 'GmarketSansMedium'; color: black;">
			<div style="padding: 10px;">
				<section>
					<div class="from-them">
						<p>안녕하세요 부산로드입니다.</p>
					</div>

					<div class="from-them">
						<p>무엇을 도와드릴까요?</p>
					</div>
					<div class="from-them">
						<p>1) 홈페이지 소개 2) 관광지 추천</p>
					</div>
					<div class="clear"></div>
					<div class="from-them">
						<div id="response"></div>
					</div>
				</section>
				<div class="clear"></div>
			</div>
			<div class="form-floating mb-3 mt-3" id="conversationDiv" style="">
				<hr style="background: #315A9E;">
				<table style="font-family: 'GmarketSansMedium';">
					<tr>
						<td><input type="text" class="form-control" id="text"
							style="width: 235px; background: white; font-family: 'GmarketSansMedium';"
							placeholder="번호로 입력하기"></td>
						<td><button id="sendMessage" onclick="sendMessage(); test();"
								class="btn btn-outline-dark mt-auto" style="font-size: 12px;">전송</button></td>
						<td><button id="sendMessage"
								onclick="location.href='chatbot.jsp'"
								class="btn btn-outline-dark mt-auto" style="font-size: 12px;">초기화</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>