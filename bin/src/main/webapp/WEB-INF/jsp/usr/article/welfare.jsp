<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/head.jsp"%>
<%@ include file="../home/topbar.jsp"%>


<div class="text-center text-4xl">
	<label for="pageSelect text-4xl">카테고리를 선택하세요:</label>
	<select class="select select-bordered" id="pageSelect" onchange="redirectToPage()">

	    <option value="http://localhost:8085/usr/article/welfare">연금 복지 제도</option>
	    <option value="http://localhost:8085/usr/article/recruitment" >성과 보수 제도</option>
	    <option value="http://localhost:8085/usr/article/Accident">재해 보상 제도</option>
	</select>
</div>




<div class="rounded-lg border border-gray-300 w-7/12 m-auto">
	<dl class="qna-wrap">
		<dt class="">
			<a href="#none" onclick="javascript:opendata(21)"><i>[질문]</i>외국에
				이민가거나 국적을 상실한 경우에도 연금을 계속 수령할 수 있는지?</a>
		</dt>
		<dd class="answer" id="g21" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 연금수급자가 해외로 이민가거나 국적을 상실하더라도 연금을 매월 수령할 수 있음. 다만, 외국에 거주하고 있는
				연금수급자는 매년 6월 30일까지 신상을 확인할 수 있는 사항이 기재된 서류를 공단에 제출하여야 함(시행령 제33조제4항)</p>
			<br>
			<p>▶ 또한, 매년 해외거주 관련 서류를 기한내에 제출하지 않으면 연금지급이 일시적으로 중지될 수 있음(시행령
				제33조제5항)</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(20)"><i>[질문]</i>연금에
				대하여 압류가 가능한지?</a>
		</dt>
		<dd class="answer" id="g20" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 공무원연금법 제39조(권리의 보호)에 따라서 국세징수법, 지방세징수법, 그 밖의 법률에 따른 체납처분의
				대상에 의한 압류를 제외하고는 연금수급권의 압류는 불가함.</p>
			<br>
			<p>▶ 연금수급자의 금융계좌로 이미 지급된 연금에 대해서는 계좌압류처분이 가능함(단, 민사집행법 제195조제3호에서
				정하는 금액 이하는 압류 불가)</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(19)"><i>[질문]</i>유족연금수급권은
				어떠한 경우에 상실되는지?</a>
		</dt>
		<dd class="answer" id="g19" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 퇴직유족연금을 받을 권리가 있는 사람이 다음 각 호의 어느 하나에 해당할 때에 그 권리는
				상실됩니다.(공무원연금법 제57조제1항)</p>
			<br>
			<p>1. 사망한 때</p>
			<br>
			<p>2. 재혼한 때(사실상 혼인관계에 있는 경우를 포함)</p>
			<br>
			<p>3. 사망한 공무원이었던 사람과의 친족관계가 종료된 때</p>
			<br>
			<p>4. 장해 상태에 있지 아니한 자녀 또는 손자녀가 19세가 되었을 때</p>
			<br>
			<p>5. 장해상태(장해등급 1~7등급)가 해소되었을 때</p>
			<br>
			<p>※ 참고) 유족연금수급권이 상실된 경우 동순위 유족이 있는 경우에는 그 유족에게&nbsp; 수급권이 이전되고,
				동순위 유족이 없을 때에는 차순위에게 그 권리가 이전됩니다.(공무원연금법 제57조제2항)</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(18)"><i>[질문]</i>유족연금
				산정방법은?</a>
		</dt>
		<dd class="answer" id="g18" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 유족연금의 금액은 퇴직연금수급자의 퇴직연금액 또는 조기퇴직연금액의 60%를 지급함</p>
			<br>
			<p>다만, 공무원연금법, 군인연금법, 사립학교교직원연금법 또는 별정우체국법에 따른 퇴직연금수급권자가 이 법에 의한
				유족연금을 함께 받게 된 경우에는 당해 유족연금액의 2분의1을 감액하여 지급함(공무원연금법 제41조제2항)</p>
			<br>
			<p>※ 예시1) 퇴직연금을 200만원 받던 수급자가 2016.10.1 사망한 경우, 유족연금은 2016년 11월부터
				매월 120만원(200만원x60%)씩 수령하게 됨(퇴직연금은 2016년 10월까지 지급)</p>
			<br>
			<p>※&nbsp;예시2) 부부공무원이 동시에 연금을 수령하던 중 한 분이 먼저 사망한 경우, 사망한 배우자의
				월연금액을 200만원이었다고 가정하면, 본인이 받게 될 유족연금은 매월 60만원(200만원x60%x1/2)임</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(17)"><i>[질문]</i>사망한
				공무원의 유족으로 어머니, 배우자, 자녀 3명(각각 20세, 17세, 15세)이 있는 경우 유족연금 승계는 어떻게 되는지?</a>
		</dt>
		<dd class="answer" id="g17" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 공무원연금법 제3조&nbsp;유족에 해당하는 범위는 사망한 공무원의 부모, 배우자, 19세미만 자녀,
				손자녀(그의 부가 없거나, 1~7등급의 장해 상태인 경우)로 성년인 20세 자녀를 제외하고 모두 유족연금을 승계할 수 있는
				유족에 해당합니다.</p>
			<br>
			<p>다만, 유족이 여러명일 경우 민법 제1000조에서 정한 상속의 순위를 따르도록 되어있으며(공무원연금법
				제31조), 동순위 유족이 2명 이상일 경우 유족연금을 똑같이 나누어 지급하거나 유족급여 대표자를 선정하여 대표자가
				유족연금전액을 수령할 수 있습니다.</p>
			<br>
			<p>따라서, 본 사례에서 최우선 순위 유족은 미성년 자녀 2명(17세, 15세)이며, 배우자의 경우 최우선 순위과
				동순위이므로 유족연금은 3명에게 등분지급되거나, 대표자가 전액을 수령할 수 있습니다. 공무원의 모친은 차순위 유족으로
				선순위 유족이 연금수급권리를 상실하게 되면 그 유족연금이 이전됩니다.</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(16)"><i>[질문]</i>재직기간,
				직급이 비슷한 동료와 연금액 차이가 나는데, 이유가 무엇인지?</a>
		</dt>

		<dd class="answer" id="g16" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 퇴직연금은 개인별 기본보수(보수월액 및 기준소득월액)와 재직기간, 지급률에 의하여 산정됩니다.</p>
			<br>
			<p>특히, 기준소득월액의 경우 전 기간 평균액을 산정 기준으로 하고 있어 개인마다 퇴직연금의 산정 기초가 다르므로
				동료 공무원과 퇴직연금액이 차이 날 수 있습니다.</p>
			<br>
			<p>◇&nbsp;2009년 말 이전 재직기간 : 직급, 호봉에 따른 보수월액에 의하여 연금액 산정</p>
			<br>
			<p>- '07~'09년 직급 또는 호봉이 달랐다면 연금월액 차이 발생</p>
			<br>
			<p>◇ 2010년~퇴직 시 : 개인별 기준소득월액에 의하여 산정</p>
			<br>
			<p>- 각종 수당 지급액 차이에 따라 개인별 기준소득월액의 금액 차이가 발생하고, 기준소득월액 및 재직기간이 비슷한
				경우에도 퇴직시점에 따라 차이 발생</p>
			<br>
			<p>◇ 2016년~퇴직 시 : 소득재분배</p>
			<br>
			<p>- 소득재분배 적용 비율에 따라 연금액 차이 발생</p>
		</dd>
	</dl>

	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(15)"><i>[질문]</i>연금일부정지에
				대한 정산을 차차년도(소득발생 2년 후) 1월에 하는 이유는?</a>
		</dt>
		<dd class="answer" id="g15" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 연금 감액분은 당해연도 소득을 기준으로 산정하여야 하나, 소득이 발생한 당해연도에는 정확한 소득금액을 알 수
				없으므로, 본인신고나 건강보험공단-국세청 소득자료를 통해 우선 감액하고, 다음연도 10월에 국세청으로부터 확정된 소득을
				제공받아 차차년도 1월에 최종 정산합니다.(공무원연금법 시행령 제47조제3항)</p>
			<br>
			<p>▶ 이 과정에서 정확한 소득금액은 소득발생 다음연도에 확인이 가능하기 때문에 소득발생 시점과 최종 정산이 약
				1~2년이라는 시차가 발생하게 됩니다. 다만, 당해연도 소득에 대한 국세청 확정 전 개별 정산을 원할 경우 본인이 국세청에
				신고한 소득금액을 기준으로 먼저 개별정산하여 정산시기를 앞당길 수 있으며, 최종 국세청 확정소득에 따라 재정산 될 수
				있습니다.(공무원연금법 시행령 제47조제5항)</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(14)"><i>[질문]</i>부동산
				임대소득을 정지대상 소득에 포함하는 이유는?</a>
		</dt>
		<dd class="answer" id="g14" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 부동산 임대소득도 사업소득에 포함하고 있어 다른 사업소득과의 형평성 문제 및 국민연금의 소득심사제도에서도
				부동산 임대소득을 포함하고 있는 점을 고려하여 2016.1.1.부터 정지대상 소득에 부동산 임대소득을 포함하게 되었습니다.</p>
			<br>
			<p>&nbsp;</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(13)"><i>[질문]</i>연금일부정지
				대상이 되는 소득과 기준금액은 무엇인지?</a>
		</dt>

		<dd class="answer" id="g13" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 연금 외의 ⌈소득세법⌋ 제19조제2항에 따른 사업소득금액(총 수입-필요경비)이나 동법 제20조제2항에 따른
				근로소득금액(총 급여-근로소득공제) 또는 각 소득금액을 합산한 소득금액의 월평균금액이 전년도 평균연금월액을 초과하는 경우
				연금일부정지 대상이 됩니다.(공무원연금법 제50조제3항)</p>
			<br>
			<p>&nbsp;- 사업소득금액에는 부동산 임대소득이 포함되고, 이자,배당,기타소득은 정지대상 소득에서 제외됩니다.</p>
			<br>
			<p>※ 기준이 되는 평균연금월액은 퇴직연금액과 유족연금액을 합한 금액을 연금수급자수로 나눈 금액을 말함</p>
		</dd>
	</dl>
	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(12)"><i>[질문]</i>연금
				개시연령에 미달하더라도 연금을 조기로 받을 수 있는지?</a>
		</dt>

		<dd class="answer" id="g12" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 본인이 원하는 경우 조기퇴직연금 청구 가능합니다.</p>
			<br>
			<p>&nbsp;- 연금 지급개시연령이 미달된 경우 1년당 5%씩 퇴직연금의 95%~75% 감액된 연금을 조기로
				수령할 수 있습니다.(최대 5년까지)</p>
			<br>
			<p>(예시) 2018.12.31.퇴직, 2025.12월 연금 개시, 연금 200만원</p>
			<br>
			<p>- 1년 조기로 선택: 2024.12월 연금 개시, 연금 190만원(200만원*95%)</p>
			<br>
			<p>- 2년 조기로 선택: 2023.12월 연금 개시, 연금 180만원(200만원*90%)</p>
			<br>
			<p>- 3년 조기로 선택: 2022.12월 연금 개시, 연금 170만원(200만원*85%)</p>
			<br>
			<p>- 4년 조기로 선택: 2021.12월 연금 개시, 연금 160만원(200만원*80%)</p>
			<br>
			<p>- 5년 조기로 선택: 2020.12월 연금 개시, 연금 150만원(200만원*75%)</p>
			<br>
			<p>※ 조기퇴직연금을 청구한 경우 당초의 연금지급개시연령에 도달하더라도 감액 전 연금월액으로 소급 지급 및 변경
				되지 않으며, 조기퇴직연금 수급중 재임용되어 재직기간을 합산한 후 다시 퇴직한 경우 재임용 전의 조기퇴직연금지급률을 적용함</p>
		</dd>
	</dl>

	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->
			<a href="#none" onclick="javascript:opendata(11)"><i>[질문]</i>공무원연금은
				개인적인 선택에 의해 가입할 수 있는지?</a>
		</dt>

		<dd class="answer" id="g11" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 공무원연금은 개인의 선택에 의해 가입하는 것이 아니고 공무원 임용과 동시에 당연(강제)가입하게 됩니다.
				공적연금제도는 가입자의 공동체적인 연대를 바탕으로 세대 간 부양방식에 의해 운영되므로 임의가입이 허용된다면 제도 본연의
				목적달성이 불가능하기 때문입니다.</p>
		</dd>
	</dl>

	<dl class="qna-wrap">
		<dt class="">
			<!-- 질문 -->

			<a href="#none" onclick="javascript:opendata(10)"><i>[질문]</i>퇴직연금과
				일시금 등 급여 종류를 선택하는 기준은 무엇인지?</a>

		</dt>

		<dd class="answer" id="g10" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 퇴직급여의 종류는 퇴직연금, 퇴직(연금)일시금, 퇴직연금공제일시금이 있으며 퇴직공무원 개인별 재직기간에 따라
				급여 종류를 선택할 수 있는 기준이 다릅니다.</p>
			<br>
			<p>○ 재직기간이 10년 이상인 경우(아래 급여 중 택1, 퇴직수당과 함께 또는 각각 청구)</p>
			<br>
			<p>&nbsp;- 퇴직연금: 전부 연금으로 수령하고자 할 때</p>
			<br>
			<p>&nbsp;- 퇴직연금일시금: 전부 일시금으로 수령하고자 할 때</p>
			<br>
			<p>&nbsp;- 퇴직연금공제일시금: 일부는 연금(최소 10년이상) 일부는 일시금으로 수령하고자 할 때</p>
			<br>
			<p>○ 재직기간이 10년 미만인 경우(퇴직일시금과 퇴직수당을 함께 또는 각각 청구)</p>
			<br>
			<p>&nbsp;- 퇴직일시금: 일시금으로만 수령할 수 있음</p>
			<br>
			<p>○ 재직기간이 1년 미만인 경우: 퇴직일시금 청구(퇴직수당 청구 불가)</p>
		</dd>
	</dl>

	<dl class="qna-wrap">



		<dt class="">
			<!-- 질문 -->


			<a href="#none" onclick="javascript:opendata(9)"><i>[질문]</i>퇴직급여는
				퇴직하면 자동으로 지급되는지?</a>


		</dt>

		<dd class="answer" id="g9" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 공무원연금법에서 정한 모든 급여는 그 급여를 받을 권리를 가진 자의 신청(급여 종류의 선택 등)에 따라
				인사혁신처장의 결정으로&nbsp;공무원연금공단이 지급하도록 규정되어 있습니다.(공무원연금법 제26조)</p>
			<br>
			<p>따라서, 공무원이 퇴직하게 되면 본인이 직접 급여종류를 선택하여 청구해야 합니다.</p>
			<br>
			<p>▶ 또한, 퇴직급여의 청구권은 퇴직일로부터 5년이며 이를 행사하지 않을 경우 시효로 인하여 그 권리가
				소멸됩니다.(공무원연금법 제81조제1항)</p>
			<br>
			<p>&nbsp;</p>
		</dd>
	</dl>

	<dl class="qna-wrap">



		<dt class="">
			<!-- 질문 -->


			<a href="#none" onclick="javascript:opendata(8)"><i>[질문]</i>같은 달
				15일자 퇴직과 30일자 퇴직은 퇴직급여액이 다른지?</a>



		</dt>

		<dd class="answer" id="g8" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 공무원연금법상 재직기간은 공무원으로 임명된 날이 속하는 달부터 퇴직한 날의 전날 또는 사망한 날이 속하는
				달까지의 연월수(年月數)로 계산됩니다. 따라서 같은 달의 15일자 퇴직과 30일자 퇴직의 재직기간은 동일합니다.</p>
			<br>
			<p>▶ 따라서, 급여의 산정 기초가 되는 기준보수(보수월액 또는 기준소득월액)가 동일하다는 가정하에서 퇴직급여
				산정에 반영되는 재직기간이 동일하기 때문에 15일자 퇴직과 30일자 퇴직의 퇴직급여액은 동일합니다.</p>
			<br>
			<p>*(참고) 1일자 퇴직의 경우 퇴직한 날의 전날이 속하는 달까지 재직기간으로 계산되므로 전달까지 재직기간으로
				인정되고 퇴직급여액도 달라집니다</p>
			<br>
			<p>&nbsp; - (예시) 2018.6.1. 퇴직자의 경우 재직기간은 2018.5월까지 인정</p>
		</dd>
	</dl>

	<dl class="qna-wrap">



		<dt class="">
			<!-- 질문 -->



			<a href="#none" onclick="javascript:opendata(7)"><i>[질문]</i>휴직
				중인데 기여금은 어떻게 납부하는지?</a>

		</dt>

		<dd class="answer" id="g7" style="display: none;">
			<!-- 답변 -->
			<i>[답변]</i>
			<p>▶ 휴직기간 기여금 납부방법 및 산정방식(공무원연금법 시행령 제63조)</p>
			<br>
			<p>- 공무원이 병역복무나 그 밖의 사유로 휴직하여 보수를 지급받지 아니하는 경우에는 휴직기간 동안 기여금을
				납부하지 않고, 휴직 사유가 소멸되어 보수가 지급되는 달의 다음 달부터 해당 월분의 기여금과 같은 금액(소급기여금)으로
				납부하게 됩니다.</p>
			<br>
			<p>-&nbsp;다만, 본인이 원하는 경우 휴직기간 중이라도 그 기간에 해당하는 기여금을 매월 납부할 수 있으며
				소급기여금을 일시로 납부하고자 할 경우에는 납부한 달의 해당 월분의 기여금을 기준으로 잔여 소급기여금을 일시 납부할 수
				있습니다.</p>
			<br>
			<p>▶ 소급기여금 개별납부 방법</p>
			<br>
			<p>- 보수 미지급 휴직에 따른 소급기여금은 본인이 원하는 경우 휴직 중 또는 복직 후에도 공무원 개인이 개별
				납부(매월, 분납, 일시 등)할 수 있으며 유급휴직자는 일반 재직자와 동일하게 매월 급여에서 공제하여 납부합니다.</p>
			<br>
			<p>*&nbsp;납부금액 및 납부계좌 확인은 공무원연금공단 콜센터(1588-4321)로 문의</p>
		</dd>
	</dl>


</div>
<%@ include file="../common/bottom.jsp"%>
<script>
  function opendata(id) {
    var answer = document.getElementById("g" + id);
    if (answer.style.display === "none") {
      answer.style.display = "block";
    } else {
      answer.style.display = "none";
    }
  }
  function redirectToPage() {
      var selectBox = document.getElementById("pageSelect");
      var selectedValue = selectBox.options[selectBox.selectedIndex].value;
      
      if (selectedValue !== "") {
          window.location.href = selectedValue;
      }
  }
</script>

<style>
.qna-wrap dt {
	padding: 15px 15px 15px 55px;
	background: url(../images/content/bullet_q.png) no-repeat 15px 11px;
	cursor: pointer;
}

body, div, dl, dt, dd, ul, ol, li, pre, code, fieldset, legend, input,
	button, textarea, p, blockquote, th, td, select {
	font-size: 15px;
	line-height: 1.6;
	letter-spacing: 0.001em;	
	color: #494949;
}

* {
	margin: 0;
	padding: 0;
	-webkit-text-size-adjust: none;
}

.qna-wrap dt {
	padding: 15px 15px 15px 55px;
	background: url(../images/content/bullet_q.png) no-repeat 15px 11px;
	cursor: pointer;
}
.qna-wrap dd {
    padding: 15px 15px 15px 55px;
    font-size: 15px;
    line-height: 22px;
    color: #66727f;
    border-top: 1px solid #e8e8e8;
}
</style>