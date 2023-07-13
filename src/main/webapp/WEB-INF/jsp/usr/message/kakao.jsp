<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../common/head.jsp" %>

<!-- 카카오 메시지 보내기 api -->
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"></script>
<script>
	// 자바스크립트 키 입력
	Kakao.init('3cd0bf471b4db0d6b9dbe54cae524038')
	
	function action(){
		// 메시지 템플릿 id 입력
		Kakao.Share.sendCustom({templateId: 94364})
	}
</script>

	<section class="">
		<div class="container mx-auto px-3 h-full ">
			<nav class="flex items-end mx-32">
				<div class="mr-10"><span>메시지 보내기 예시</span><img src="/resource/images/register_message.png"/></div>
				<button onclick="action();" class="btn btn-success mt-10">메시지 보내기</button>
			</nav>
		</div>
	</section>

