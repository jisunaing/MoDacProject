<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- ���̹����̵�ηα��� ��ư ���� ���� -->
<div id="naverIdLogin"></div>
<!-- (2) LoginWithNaverId Javscript SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
  <!-- (3) LoginWithNaverId Javscript ���� ���� �� �ʱ�ȭ -->
 <script>
	 var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "kZTeZSK7xvqzpnXZcuau",
				callbackUrl: "http://localhost:8080/MoDacProject/home/index.do",
				isPopup: false, /* �˾��� ���� ����ó�� ���� */
				loginButton: {color: "green", type: 3, height: 60} /* �α��� ��ư�� Ÿ���� ���� */
			}
		);
		
	   /* ���������� �ʱ�ȭ�ϰ� ������ �غ� */
		naverLogin.init();
		
	
	</script> 