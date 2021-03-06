<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>



<main>
   <div class="reserveContents">
      <div class="yearMonth">
         <div class="left monthChange">
            <img src="images/reservation/left.svg" alt="left" />
         </div>
         <h2 class="contentsTitle">2021년 10월</h2>
         <div class="right monthChange">
            <img src="images/reservation/right.svg" alt="right" />
         </div>
      </div>
      <section class="selectDay">
         <div class="selectCalendar">
            <c:if test="${selectedDate != null}">
               <table class="calendarTable" border="0" data-selected="${selectedDate }">
            </c:if>
            <c:if test="${selectedDate == null}">
               <table class="calendarTable" border="0">
            </c:if>
               <thead>
                  <tr class="weeksTitle">
                     <th class="sun">일</th>
                     <th class="etc">월</th>
                     <th class="etc">화</th>
                     <th class="etc">수</th>
                     <th class="etc">목</th>
                     <th class="etc">금</th>
                     <th class="sat">토</th>
                  </tr>
               </thead>
               <tbody class="dates">

               </tbody>
            </table>
         </div>
         <div class="selectInfo">
            <h2></h2>
            <ul>
               [예약안내]
               <li>펜션연락처는 예약과 동시에 고객님의 휴대폰으로 자동 발송됩니다.</li>
               <li>예약 전 취소수수료를 꼭 확인바랍니다.</li>
               <li>모든 예약의 취소 시 총 입금액의 10%가 공제됩니다.</li>
            </ul>
            <br />
            <ul>
               [입∙퇴실안내]
               <li>입실시간 15:00 / 퇴실시간 11:00</li>
               <li>체크인과 체크아웃은 모두 엔소이카페에서 합니다.</li>
               <li>퇴실 시 퇴실점검 부탁드립니다.</li>
               <li>11시부터 15시까지 펜션 청소시간이므로 시간을 꼭 지켜주세요.</li>
            </ul>
            <br />
            <ul>
               [인원추가요금]
               <li>각 객실마다 정해진 최대수용인원(영유아포함) 초과를 엄격히 금합니다.</li>
               <li>예약된 인원외에는 펜션에 입실 할 수 없습니다.</li>
            </ul>
            <br />
            <div class="viewMore">더보기</div>
            <ul class="selectNotice">
               [이용 주의사항]
               <li>객실내에서의 고기및 해산물구이및 튀김류의 조리와 흡연이 금지 되어 있습니다.</li>
               <li>시설물 훼손이나 파손,분실시 운영자에게 말씀하시고 규정에 따라 시가 변상해 주셔야 합니다.</li>
               <li>최대정원 자바 1,2,5 ▶2명 // 자바 3 ▶ 4명</li>
               <li>JAVA 3 의 경우 4 인이 최대정원입니다.<br />1가족 이상 또는 2커플의 예약이
                  불가능합니다.
               </li>
               <li>최대정원 초과시 입실이 불가능하며 당일취소와 동일하게 처리됩니다.</li>
               <li>법정 미성년자의 단독 예약이 불가능합니다.</li>
               <li>15세 미만의 아동 동반 시 안전책임자를 지정해야 합니다.</li>
               <li>펜션측은 이용자부주의로 인한 안전사고에 대한 책임을 지지 않습니다.</li>
               <li>반려동물은 출입이 불가능합니다.</li>
               <li>사전 동의없는 상업적 촬영은 당일취소 처리됩니다.</li>
               <br />
               <br />
               <li>[ 구매 후 예약 상황에 따라 예약 불가 및 예약 취소가 될 수 있습니다.<br /> 구매 후 반드시
                  펜션으로 예약 확정 여부 확인을 부탁드립니다.<br /> (해당    사유로 인한 취소 시, 예약 당일이라도 100%
                  환불이 가능하며,<br /> 그 외 보상은 불가하오니 반드시 예약 확정 여부 확인을 부탁드립니다. ]
               </li>
            </ul>
            <br />
            <div class="viewStop">접기</div>
         </div>
      </section>
      <section class="roomSelect">
         <h2>객실선택</h2>
         <h4 class="ageStandard">
            나이기준 <span> 성인 (만 19세 이상) 아동 (이용불가) 유아(이용불가)</span>
         </h4>
         <br /> <br />
         <table class="roomSelectTable" border="0">
         <colgroup>
            <col class="selectTh">
            <col class="roomImgTh">
            <col class="roomTypeTh">
            <col class="periodTh">
            <col class="adultTh">
            <col class="childTh">
            <col class="infantTh">
            <col class="payTh">
         </colgroup>
            <thead>
               <tr class="roomTitleTh">
                  <th class=""></th>
                  <th class="">객실사진</th>
                  <th class="">객실타입</th>
                  <th class="">기간</th>
                  <th class="">성인</th>
                  <th class="">아동</th>
                  <th class="">유아</th>
                  <th class="">요금</th>
               </tr>
            </thead>
            <tbody class="roomSelectList">
               <tr class="roomTitle">
                  <td class="select"><input type="checkbox" class="cbCheck"
                     id="cb1" /></td>
                  <td class="roomImg"><img src="images/room/room1_01.png"
                     alt="roomImg" /></td>
                  <td class="roomType">
                     <h4>자바1</h4>
                     <p class="type1">17평</p>
                     <p class="type2">기준2명/최대2명</p>
                     <p class="type3">*원룸 오픈형/스파</p>
                  </td>
                  <td class="period"><select name="night" id="night1"
                     class="night">
                        <option value="1">1박</option>
                        <option value="2">2박</option>
                        <option value="3">3박</option>
                        <option value="4">4박</option>
                        <option value="5">5박</option>
                        <option value="6">6박</option>
                        <option value="7">7박</option>
                        <option value="8">8박</option>
                        <option value="9">9박</option>
                        <option value="10">10박</option>
                  </select></td>

                  <td class="adult" data-max="2"><input type="button" value="+"
                     class="plus persons" />
                     <p class="result">1</p> <input type="button" value="-"
                     class="minus persons" /></td>

                  <td class="child"><p>이용불가</p></td>
                  <td class="infant"><p>이용불가</p></td>
                  <td class="pay">1박 당<br>170,000원
                  </td>
               </tr>
               <tr class="roomTitle">
                  <td class="select"><input type="checkbox" class="cbCheck"
                     id="cb2" /></td>
                  <td class="roomImg"><img src="images/room/room2_01.png"
                     alt="roomImg" /></td>
                  <td class="roomType">
                     <h4>자바2</h4>
                     <p class="type1">25평</p>
                     <p class="type2">기준2명/최대2명</p>
                     <p class="type3">*원룸형/스파</p>
                  </td>
                  <td class="period"><select name="night" id="night2"
                     class="night">
                        <option value="1">1박</option>
                        <option value="2">2박</option>
                        <option value="3">3박</option>
                        <option value="4">4박</option>
                        <option value="5">5박</option>
                        <option value="6">6박</option>
                        <option value="7">7박</option>
                        <option value="8">8박</option>
                        <option value="9">9박</option>
                        <option value="10">10박</option>
                  </select></td>

                  <td class="adult" data-max="2"><input type="button" value="+"
                     class="plus persons" />
                     <p class="result">1</p> <input type="button" value="-"
                     class="minus persons" /></td>

                  <td class="child"><p>이용불가</p></td>
                  <td class="infant"><p>이용불가</p></td>
                  <td class="pay">1박 당<br>200,000원
                  </td>
               </tr>
               <tr class="roomTitle">
                  <td class="select"><input type="checkbox" class="cbCheck"
                     id="cb3" /></td>
                  <td class="roomImg"><img src="images/room/room3_01.png"
                     alt="roomImg" /></td>
                  <td class="roomType">
                     <h4>자바3</h4>
                     <p class="type1">24평</p>
                     <p class="type2">기준4명/최대4명</p>
                     <p class="type3">*원룸형</p>
                  </td>

                  <td class="period"><select name="night" id="night3"
                     class="night">
                        <option value="1">1박</option>
                        <option value="2">2박</option>
                        <option value="3">3박</option>
                        <option value="4">4박</option>
                        <option value="5">5박</option>
                        <option value="6">6박</option>
                        <option value="7">7박</option>
                        <option value="8">8박</option>
                        <option value="9">9박</option>
                        <option value="10">10박</option>
                  </select></td>

                  <td class="adult" data-max="4"><input type="button" value="+"
                     class="plus persons" />
                     <p class="result">1</p> <input type="button" value="-"
                     class="minus persons" /></td>

                  <td class="child"><p>이용불가</p></td>
                  <td class="infant"><p>이용불가</p></td>
                  <td class="pay">1박 당<br>200,000원
                  </td>
               </tr>
               <tr class="roomTitle">
                  <td class="select"><input type="checkbox" class="cbCheck"
                     id="cb4" /></td>
                  <td class="roomImg"><img src="images/room/room4_01.png"
                     alt="roomImg" /></td>
                  <td class="roomType">
                     <h4>자바5</h4>
                     <p class="type1">15평</p>
                     <p class="type2">기준2명/최대2명</p>
                     <p class="type3">*원룸 오픈형/스파</p>
                  </td>

                  <td class="period"><select name="night" id="night4"
                     class="night">
                        <option value="1">1박</option>
                        <option value="2">2박</option>
                        <option value="3">3박</option>
                        <option value="4">4박</option>
                        <option value="5">5박</option>
                        <option value="6">6박</option>
                        <option value="7">7박</option>
                        <option value="8">8박</option>
                        <option value="9">9박</option>
                        <option value="10">10박</option>
                  </select></td>

                  <td class="adult" data-max="2"><input type="button" value="+"
                     class="plus persons" />
                     <p class="result">1</p> <input type="button" value="-"
                     class="minus persons" /></td>

                  <td class="child"><p>이용불가</p></td>
                  <td class="infant"><p>이용불가</p></td>
                  <td class="pay">1박 당<br>170,000원
                  </td>
               </tr>
            </tbody>
         </table>
      </section>
      <section class="addService">
         <h2 class="addServiceTitle">부가서비스 선택</h2>   
         <hr />
         <table class="addSelectTable" border="0">
            <thead>
               <tr class="addTitle">
                  <th class="addName">부가서비스명</th>
                  <th class="addInfo">설명</th>
                  <th class="addPrice">개당 가격</th>
                  <th class="addNo">수량</th>
               </tr>
            </thead>
            <tbody class="addSelectList">
               <tr id="add">
                  <td class="addWhat">
                     <p>브런치 (1명)</p>
                  </td>
                  <td class="info">
                     <p>* 구성 : 파니니,후랑크소세지,계절과일,샐러드,시리얼,오렌지쥬스,딸기잼</p>
                     <p>* 샐러드나 과일은 계절에 따라 종류가 다를 수 있습니다.</p>
                     <p>* 체크인 전까지 예약이 가능하며, 브런치 이용 당일 신청 및 환불이 불가능 합니다.</p>
                     <p>* 브런치 제공장소는 카페이며 이용시간은 10:00~10:30 입니다.</p>
                     <p>* 제공시간 이외에는 브런치 제공이 되지 않습니다.</p>
                  </td>
                  <td class="price">
                     <p>5,000</p>
                  </td>
                  <td class="no"><select name="number" id="ssb1"
                     class="number selectCheck">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                  </select></td>
               </tr>

               <tr id="add">
                  <td class="addWhat">
                     <p>
                        야자숯<br>+<br>웨버그릴 (2명)
                     </p>
                  </td>
                  <td class="info">
                     <p>* 객실 안에서는 육류구이 및 해산물구이가 불가능합니다.</p>
                     <p>* 고기,야채, 쌈장,조미료 등은 직접 구입해 오셔야 합니다.</p>
                     <p>* 21시 이후에는 숯과 그릴이 제공되지 않습니다.</p>
                     <p>* 자바펜션에서 제공되는 숯 이외에 다른 숯은 사용하실 수 없습니다.</p>
                  </td>
                  <td class="price">
                     <p>20,000</p>
                  </td>
                  <td class="no"><select name="number" id="ssb2"
                     class="number selectCheck">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                  </select></td>
               </tr>

               <tr id="add">
                  <td class="addWhat">
                     <p>
                        야자숯<br>+<br>웨버그릴 (3-4명)
                     </p>
                  </td>
                  <td class="info">
                     <p>* 객실 안에서는 육류구이 및 해산물구이가 불가능합니다.</p>
                     <p>* 고기,야채, 쌈장,조미료 등은 직접 구입해 오셔야 합니다.</p>
                     <p>* 21시 이후에는 숯과 그릴이 제공되지 않습니다.</p>
                     <p>* 자바펜션에서 제공되는 숯 이외에 다른 숯은 사용하실 수 없습니다.</p>
                  </td>
                  <td class="price">
                     <p>30,000</p>
                  </td>
                  <td class="no"><select name="number" id="ssb3"
                     class="number selectCheck">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                  </select></td>
               </tr>
               <tr id="add">
                  <td class="addWhat">
                     <p>화이트 와인</p>
                  </td>
                  <td class="info">
                     <p>* 허니문 모스카토 (화이트와인 750ml)</p>
                     <p>* Abbazia, Honeymoon Moscato , Italy</p>
                     <p>* 스파클링의 기포감과 스위트한 미감이 매력적입니다.</p>
                     <p>* 포도, 복숭아, 패션 푸르츠의 향이 달콤하게 느껴집니다.</p>
                  </td>
                  <td class="price">
                     <p>25,000</p>
                  </td>
                  <td class="no"><select name="number" id="ssb4"
                     class="number selectCheck">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                  </select></td>
               </tr>

               <tr id="add">
                  <td class="addWhat">
                     <p>레드 와인</p>
                  </td>
                  <td class="info">
                     <p>* 에코발란스 피노 누아 2018 (유기농 레드와인 750ml)</p>
                     <p>* Emiliana Ecobalance Pinot Noir 2018 , Chile (organic
                        wine)</p>
                     <p>* 달콤한 바닐라 아로마의 플로럴 향이 납니다.</p>
                     <p>* 풍부한 과실 풍미와 부드러운 미감을 주는 와인입니다.</p>
                  </td>
                  <td class="price">
                     <p>25,000</p>
                  </td>
                  <td class="no"><select name="number" id="ssb5"
                     class="number selectCheck">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                  </select></td>
               </tr>

               <tr id="add">
                  <td class="addWhat">
                     <p>스파 거품 입욕제</p>
                  </td>
                  <td class="info">
                     <p>* DRESDNER ESSENZ HERBAL BATH (드레스덴너 에센즈 스파 거품 입욕제)</p>
                     <p>* 라벤더 / 오렌지린든 블라썸 제품이 준비되어 있습니다. (랜덤 제공)</p>
                     <p>* 드레스덴너 에센즈는 허브와 허브추출물로 유명한 독일제품입니다.</p>
                     <p>* 자바카페 카운터에서도 입욕제 구매가 가능합니다.</p>
                     <p>* 스파 이용이 가능한 객실은 [자바 1, 2] 객실입니다.</p>
                  </td>
                  <td class="price">
                     <p>5,000</p>
                  </td>
                  <td class="no"><select name="number" id="ssb6"
                     class="number selectCheck">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                  </select></td>
               </tr>
            </tbody>
         </table>
      </section>

      <section class="memberInfo">
         <h2>예약자 정보</h2>
         <hr />
         <div class="memberTitle">
            <p>예약자명</p>
            <p>연락처</p>
            <p>도착예정시간</p>
            <p class="etcHeight">요청사항</p>
            <p>유입경로</p>
         </div>
         <div class="memberAnswer">
            <input type="text" placeholder="홍길동" id="name" class="name" /> <input
               type="text" placeholder="010-0000-0000" id="phone" class="phone" />
            <select name="number" id="arrive" class="arrive">
               <option value="오후 3시">오후 3시</option>
               <option value="오후 3시 30분">오후 3시 30분</option>
               <option value="오후 4시">오후 4시</option>
               <option value="오후 4시 30분">오후 4시 30분</option>
               <option value="오후 5시">오후 5시</option>
               <option value="오후 5시 30분">오후 5시 30분</option>
               <option value="오후 6시">오후 6시</option>
               <option value="오후 6시 30분">오후 6시 30분</option>
               <option value="오후 7시">오후 7시</option>
               <option value="오후 7시 30분">오후 7시 30분</option>
               <option value="오후 8시">오후 8시</option>
               <option value="오후 8시 30분">오후 8시 30분</option>
               <option value="오후 9시">오후 9시</option>
               <option value="오후 9시 30분">오후 9시 30분</option>
               <option value="오후 10시">오후 10시</option>
               <option value="오후 10시 30분">오후 10시 30분</option>
               <option value="오후 11시">오후 11시</option>
               <option value="오후 11시 30분">오후 11시 30분</option>
            </select>
            <textarea name="idEtc" class="request" id="request" cols="145"
               rows="10"></textarea>
            <select name="text" id="howToKnow" class="howToKnow">
               <option value="포털사이트">포털사이트</option>
               <option value="블로그">블로그</option>
               <option value="인스타그램">인스타그램</option>
               <option value="페이스북">페이스북</option>
               <option value="지인소개">지인소개</option>
               <option value="재방문">재방문</option>
               <option value="기타">기타</option>
            </select>
         </div>
      </section>
      <section class="termsAgree">
         <h2>
            약관동의 <span> <input id="allCheck" type="checkbox" class="agreeAll" /> 전체동의<br /></span>
         </h2>
         <hr />
         <ul class="agreeList">
            <li class="agreeSubmenu">
               <ul class="agreeTitle">
                  유의사항/환불규정
                  <span><input type="checkbox" id="agree1" class="agree"/> 동의</span>
                  <li class="moreDetail">
                     <p>- 보호자 없는 미성년자는 예약 및 입실이 불가합니다.</p>
                     <p>- 예약시 신청하신 인원 외에 추가인원은 입실이 거부 될수 있습니다.</p>
                     <p>- 인원 추가시 최대인원은 초과 할 수 없습니다. 최대인원 초과로 입실 거부시 환불은 되지 않습니다.</p> -
                     취소/변경시 아래와 같이 취소수수료가 발생할수 있으므로 신중한 예약바랍니다.
                     <p></p>
                  </li>
               </ul>
               <ul class="agreeTitle">
                  개인정보 수집 및 이용동의
                  <span><input type="checkbox" id="agree2" class="agree"/> 동의</span>
                  <li class="moreDetail">
                     <p>- 개인정보 이용목적 : 예약관련안내, 결제/취소내역 안내, 민원처리</p>

                     <p>- 수집하는 개인정보항목 : 이름, 연락처, 생년월일, 예약 및 결제정보, 신용카드정보, 은행명,
                        입금자명, 접속 IP, 결제기록</p>
                     <p>- 개인정보 보유 기간 : 개인정보 수집목적 달성 후 지체없이 파기 (단, 관계법령의 규정에 의해 보존할
                        필요가 있을 경우 관계법령에서 정한 기간 동안 보관</p>
                     <p>1. 보존항목 : 접속로그, 결제기록</p>
                     <p>2. 보존근거 : 전자상거래 등에서의 소비자 보호에 관한 법률</p>
                     <p>3. 계약 또는 청약 철회 등에 관한 기록 : 5년</p>
                     <p>4. 대금결제 및 재화등의 공급에 관한 기록 : 5년</p>
                     <p>5. 소비자 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                  </li>
               </ul>
               <ul class="agreeTitle">
                  개인정보 제3자 제공동의
                  <span><input type="checkbox" id="agree3" class="agree"/> 동의</span>
                  <li class="moreDetail">
                     <p>- 개인정보를 제공받는자 : 이용하고자 하는 숙박업소</p>
                     <p>- 제 3자의 개인정보 이용목적 : 구매자 확인, 미성년 여부확인, 고객 상담 및 예약목적</p>
                     <p>- 개인정보 제공 항목 : 이름, 연락처, 생년월일, 예약정보</p>
                  </li>
               </ul>
               <ul class="agreeTitle">
                  미성년자 아님 동의
                  <span><input type="checkbox" id="agree4" class="agree"/> 동의</span>
               </ul>
            </li>
         </ul>
      </section>


      <section>
         <hr class="payment">
         <div class="cashNav">
            <h2>결제 수단 선택</h2>
            <br>
            <input type="checkbox" class="mutongjang" checked disabled /><span>무통장입금</span>
         </div>
         <table class="selectSum" border="0">
            <thead>
               <tr class="selectList">
                  <th class="roomPay">객실</th>
                  <th class="plusPay"></th>
                  <th class="addPay">추가인원</th>
                  <th class="plusPay"></th>
                  <th class="etcPay">부가서비스</th>
                  <th class="plusPay"></th>
                  <th class="totalPay">최종이용금액</th>
               </tr>
            </thead>
            <tbody class="selectPay">
               <tr id="payList">
                  <td class="roomWon">
                     <p>0</p>
                  </td>

                  <td class="pl"><i class="fas fa-plus"></i></td>
                  <td class="personsWon">
                     <p>0</p>
                  </td>

                  <td class="pl"><i class="fas fa-plus"></i></td>
                  <td class="serviceWon">
                     <p>0</p>
                  </td>

                  <td class="pl"><i class="fas fa-equals"></i></td>
                  <td class="totalWon">
                     <p class="ttlPay">0</p>
                     <p></p>
                  </td>
               </tr>
            </tbody>
         </table>
         <br>
         <hr>

         <!--
      <div class="payAccount">
         <input type="text" placeholder="입금자명" /> <select name="account"
            id="account">
            <option value="accountNumber">티에스(아이은행) 123-45-67891-0</option>
         </select>
         <p>- 입금기한 :예약 후 1시간 이내 (2021년 10월 29일 오후 9시 42분)</p>
         <p>- 무통장입금(가상계좌)는 입금 확인 후 예약이 완료됩니다.</p>
         <p>- 입금기한 내 입금 확인이 되지 않으면, 예약은 자동으로 취소됩니다.</p>

      </div>
      -->
         <button class="lastPayment">예약하기</button>
      </section>
   </div>
</main>

<%@ include file="../include/footer.jsp"%>