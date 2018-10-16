<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	
	<!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>


	<!-- (2) LoginWithNaverId Javscript ���� ���� �� �ʱ�ȭ -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "kZTeZSK7xvqzpnXZcuau",
				callbackUrl: "http://localhost:8080/MoDacProject/home/index.do",
				isPopup: false,
				callbackHandle: true
				/* callback �������� �и��Ǿ��� ��쿡 callback ������������ callbackó���� ���ټ� �ֵ��� �����մϴ�. */
			}
		);

		/* (3) �׾Ʒ� �α��� ������ �ʱ�ȭ�ϱ� ���Ͽ� init�� ȣ�� */
		naverLogin.init();

		/* (4) Callback�� ó��. ���������� Callback ó���� �Ϸ�� ��� main page�� redirect(�Ǵ� Popup close) */
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					/* (5) �ʼ������� �޾ƾ��ϴ� ������ ������ �ִٸ� callbackó�� ������ üũ */
					var email = naverLogin.user.getEmail();
					var name = naverLogin.user.getNickName();
					var birthday = naverLogin.user.getBirthday();			
					var uniqId = naverLogin.user.getId();
					var age = naverLogin.user.getAge();
					if( email == undefined || email == null) {
						alert("�̸����� �ʼ������Դϴ�. ���������� �������ּ���.");
						/* (5-1) ����� ���� �絿�Ǹ� ���Ͽ� �ٽ� �׾Ʒ� ������������ �̵��� */
						naverLogin.reprompt();
						return;
					}

					window.location.replace("http://" + window.location.hostname + 
                            ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/MoDacProject/home/index.do");

				} else {
					console.log("callback ó���� �����Ͽ����ϴ�.");
				}
			});
		});
	</script> 