<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<div id="naverIdLogin"></div>
<!-- (2) LoginWithNaverId Javscript SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
  <!-- (3) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
 <script>
	 var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "kZTeZSK7xvqzpnXZcuau",
				callbackUrl: "http://localhost:8080/MoDacProject/home/index.do",
				isPopup: false, /* 팝업을 통한 연동처리 여부 */
				loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
			}
		);
		
	   /* 설정정보를 초기화하고 연동을 준비 */
		naverLogin.init();
		
	
	</script> 