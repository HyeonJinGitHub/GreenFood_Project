<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
		<table border="1" align="right" width="300" height="200">

			<tr>
				<td>
					<center>
						<br> <span style="color: green; font-weight: bold;">SMS
							전송 (문자보내기)</span>
					</center>
					<ul>
						<li>보낼사람 : <input type="text" name="phone" id="phone"
							placeholder=" 전화번호 입력 ( '-' 포함 )" /></li>
						<br>
						<li>내용 : <textarea name="text" placeholder=" 보낼 내용 입력 "></textarea>
						</li>
						<br>
						<center>
							<input type="button" onclick="sendSMS('sendSms')" value="전송하기" /><br>
						</center>
					</ul>

				</td>
			</tr>
		</table>

	<script>
		function sendSMS(pageName) {

			/* console.log("문자를 전송합니다.");
			$("#smsForm").attr("action", pageName + ".do"); //위에 있는 폼태그를 컨트롤러로 전송한다.
			$("#smsForm").submit(); */
			
			console.log("문자를 전송합니다.");
			var phone = $("#phone").val();
			$.ajax({
				async: false,
				type: 'POST',
				data : {"phone": phone },
				url : pageName + ".do",
				success : function(data) {
					console.log(data);
					/* if(data == true) {
						 $("#phoneck").attr("disabled", false);
	  				} */
				},
				error : function(error) {
					alert('error : ' + JSON.stringify(error));
				}
			});
		}
	</script>

</body>
</html>