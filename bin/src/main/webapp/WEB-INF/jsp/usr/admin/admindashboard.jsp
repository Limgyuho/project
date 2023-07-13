<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="admindashboard" />
<%@ include file="../common/head.jsp"%>


<h1 class="text-4xl text-center font-bold my-10 ">
	<a href="/usr/admin/admindashboard">멤버 관리 시스템</a>
</h1>



<div class="rounded-lg border border-gray-300 w-5/6 m-auto">
		
		<div class="indicator">
		<c:if test="${getCntRequests >=1}">
				<span class="indicator-item badge badge-secondary">${getCntRequests}</span>
		</c:if>
			<button class="btn btn-link border-red-500 text-red-500 hover:text-red-700"onclick="showTab('joinRequests')">가입 요청자 목록</button>
		</div>
		
		<div class="indicator">
		<c:if test="${getCntReject >=1}">
				<span class="indicator-item badge badge-secondary">${getCntReject}</span>
		</c:if>
			<button class="btn btn-link border-red-500 text-red-500 hover:text-red-700"onclick="showTab('approvedMembers')">가입 멤버 목록</button>
		</div>
		
		<div class="indicator">
		<c:if test="${getCntsuggestion >=1}">
				<span class="indicator-item badge badge-secondary">${getCntsuggestion}</span>
		</c:if>	
			<button class="btn btn-link border-red-500 text-red-500 hover:text-red-700"onclick="showTab('suggestion')">요청 사항 목록</button>
		</div>
	<button class="btn btn-link border-red-500 text-red-500 hover:text-red-700"onclick="showTab('accesstTime')">멤버별 접속 시간</button>
		<div class="indicator">
			<section class="">
				<div class="container mx-auto px-3 h-full ">
					<a href="/usr/message/test" class="btn btn-success">멤버별 문자전송</a>
				</div>
			</section>
		</div>
	<div id="joinRequests" class="tab-content m-10 "style="max-height: 400px; overflow-y: scroll;">
		<div class="flex">
			<h2 class="flex-grow-1 justify-content-end">총 인원:${joinRequestCnt} 명</h2>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>요청번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>부서</th>
					<th>직급</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>요청날짜</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="joinRequest" items="${getAllRequests}">
					<tr>
						<td>${joinRequest.id}</td>
						<td>${joinRequest.loginId}</td>
						<td>${joinRequest.loginPw}</td>
						<td>${joinRequest.department}</td>
						<td>${joinRequest.position}</td>
						<td>${joinRequest.name}</td>
						<td>${joinRequest.cellphoneNum}</td>
						<td>${joinRequest.email}</td>
						<td>${joinRequest.regDate}</td>
						<td><a href="approve?id=${joinRequest.id}&permission=1">Approve</a>
							<a href="approve?id=${joinRequest.id}&permission=0">Reject</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div id="approvedMembers" class="tab-content">

		<div class="flex m-10">
			<div class="flex">가입된 멤버들</div>
			<div class="flex flex-grow">총 인원: ${memberCnt} 명</div>
			<button class="btn btn-outline btn-accent" type="button"onclick="transferSelected()" id="transferButton">인사이동</button>
			<button class="btn btn-outline btn-secondary" type="button"onclick="deleteMembers()" id="deleteButton">멤버 탈퇴</button>
			<button class="ml-2 btn-text-link btn btn-active" type="button" onclick="Reapproval()">재승인</button>
		</div>
		<form class="m-10" id="transferForm" method="GET"
			action="/usr/admin/transfer"
			style="max-height: 400px; overflow-y: scroll;">
			<table class="table" style="max-height: 400px; overflow-y: scroll;">
				<thead>
					<tr>
						<th></th>
						<th>회원번호</th>
						<th>가입날짜</th>
						<th>로그인 아이디</th>
						<th>로그인 패스워드</th>
						<th>부서</th>
						<th>직급</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>승인 상태</th>
						<th>비 고</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${getAllApprovedMembers}">
						<tr>
							<td>
								<div class="form-control">
									<label class="cursor-pointer label"> <input
										type="checkbox" name="id" class="checkbox checkbox-info"
										value="${member.id}" onchange="checkSelection()" />
									</label>
								</div>
							</td>
							<td>${member.id}</td>
							<td>${member.regDate}</td>
							<td>${member.loginId}</td>
							<td>${member.loginPw}</td>
							<td>${member.department}</td>
							<td>${member.position}</td>
							<td>${member.name}</td>
							<td>${member.cellphoneNum}</td>
							<td>${member.email}</td>
							<c:if test="${member.permission == 1}">
								<td>허가 상태</td>
							</c:if>
							<c:if test="${member.permission == -1}">
								<td>탈퇴 상태</td>
							</c:if>
							<c:if test="${member.permission == 0}">
								<td>거부 상태</td>
							</c:if>
							<td><c:if test="${member.permission == 0}">
									재승인대상
								</c:if> <c:if test="${member.permission == 1}">.</c:if> <c:if test="${member.permission == -1}">
	                               x
	                       </c:if></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
		</form>

	</div>

	<!-- 요청 -->
	<div id="suggestion" class="tab-content"
		style="max-height: 400px; overflow-y: scroll;">
		<table class="table m-10">
			<thead>
				<tr>
					<th>신청 날짜</th>
					<th>신청자 부서</th>
					<th>신청자 직급</th>
					<th>신청이름</th>
					<th>신청 사항</th>
					<th>승인 상태</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="suggestion" items="${getsuggestion}">
					<tr>
						<td>${suggestion.regDate}</td>
						<td>${suggestion.department}</td>
						<td>${suggestion.position}</td>
						<td>${suggestion.name}</td>
						<td>${suggestion.item}</td>
						<td><c:choose>
								<c:when test="${suggestion.permission == 1}">
	                               요청 허가
	                           </c:when>
								<c:when test="${suggestion.permission == -1}">
	                               요청 거부
	                           </c:when>
								<c:otherwise>
									<c:set var="reason"
										value="${empty suggestion.reason ? '' : suggestion.reason}" />
									<c:if test="${not empty suggestion.reason}">
	                                   ${suggestion.reason}
	                               </c:if>
									<form action="suggestionap" method="get">
										<input type="hidden" name="id" value="${suggestion.id}">
										<input type="hidden" name="permission" value="1">
										<button type="submit">Approve</button>
									</form>
									<form action="suggestionap" method="get">
										<input type="hidden" name="id" value="${suggestion.id}">
										<input type="hidden" name="permission" value="-1">
										<button type="submit">Reject</button>
									</form>
								</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<!-- 접속 시간 -->
	<div id="accesstTime" class="tab-content"
		style="max-height: 400px; overflow-y: scroll;">
		<table class="table m-10">
			<thead>
				<tr>
					<th>멤버 번호</th>
					<th>신청자 부서</th>
					<th>신청자 직급</th>
					<th>신청이름</th>
					<th>최근 접속 시간</th>
					<th>마지막 접속 시간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="accesstTime" items="${getAccesstime}">
					<tr>
						<td>${accesstTime.id}</td>
						<td>${accesstTime.department}</td>
						<td>${accesstTime.position}</td>
						<td>${accesstTime.name}</td>
						<td>${accesstTime.recent_access}</td>
						<td>${accesstTime.last_access}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	


	<div class="flex m-10">
		<div>
			<form id="searchForm">
				<select data-value="${department }" class="select select-bordered"
					name="department">
					<option value="전체" ${empty department ? 'selected' : ''}>전체</option>
					<option value="운영지원과" ${department == '운영지원과' ? 'selected' : ''}>운영지원과</option>
					<option value="정보과" ${department == '정보과' ? 'selected' : ''}>정보과</option>
					<option value="기획재정담당관"
						${department == '기획재정담당관' ? 'selected' : ''}>기획재정담당관</option>
					<option value="감사과" ${department == '감사과' ? 'selected' : ''}>감사과</option>
				</select> <input class="ml-2 w-80 input input-bordered" name="name"
					placeholder="검색어를 입력해주세요" maxlength="20" value="${name }"
					autocomplete="off" />
				<button class="ml-2 btn-text-link btn btn-active" type="submit">검색</button>
			</form>
		</div>
	</div>
</div>


<script>
function transferSelected() {
    const checkboxes = document.querySelectorAll('input[name="id"]:checked');
    if (checkboxes.length === 0) {
        alert("선택된 멤버가 없습니다. 체크박스를 선택한 후 버튼을 눌러주세요.");
        return;
    }
    if (checkboxes.length > 1) {
        alert("하나의 멤버만 선택해주세요.");
        checkboxes.forEach(checkbox => checkbox.checked = false);
        return;
    }
    const selectedIds = Array.from(checkboxes).map(checkbox => checkbox.value);
    const form = document.getElementById('transferForm');
    form.action = '/usr/admin/transfer?id=' + selectedIds.join(',');
    form.submit();
}

    function checkSelection() {
        const checkboxes = document.querySelectorAll('input[name="id"]:checked');
        const transferButton = document.querySelector('.btn.btn-active[type="button"]');
        if (checkboxes.length > 0) {
            transferButton.disabled = false;
        } else {
            transferButton.disabled = true;
        }
    }
    function deleteMembers() {
        const checkboxes = document.querySelectorAll('input[name="id"]:checked');
        const selectedIds = Array.from(checkboxes).map(checkbox => checkbox.value);
        if (selectedIds.length > 0) {
            if (confirm("선택한 멤버를 탈퇴하시겠습니까?")) {
                window.location.href = '/usr/admin/deleteMembers?id=' + selectedIds.join(',');
            }
        }
    }
    function Reapproval() {
        const checkboxes = document.querySelectorAll('input[name="id"]:checked');
        const selectedIds = Array.from(checkboxes).map(checkbox => checkbox.value);
        if (selectedIds.length > 0) {
            if (confirm("선택한 멤버를 회원가입 승인하기겠습니까?")) {
                window.location.href = '/usr/admin/Reapproval?id=' + selectedIds.join(',');
            }
        }
    }
//     <button class="ml-2 btn-text-link btn btn-active" type="button" onclick="location.href='/usr/admin/Reapproval'">재승인</button>
    function showTab(tabName) {
        // 모든 탭 컨텐츠 숨기기
        var tabContents = document.getElementsByClassName("tab-content");
        for (var i = 0; i < tabContents.length; i++) {
            tabContents[i].style.display = "none";
        }

        // 선택한 탭 컨텐츠 보이기
        document.getElementById(tabName).style.display = "block";
    }
    
    
</script>
<style>
.table-wrapper {
	max-height: 300px; /* Adjust the height as needed */
	overflow-y: auto;
}
</style>



