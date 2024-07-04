<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약된 날짜</title>
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css'
	rel='stylesheet' />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f8f9fa; /* 배경색 지정 */
	padding: 20px;
}

h1 {
	text-align: center;
	margin-bottom: 30px;
}

#calendar {
	max-width: 800px;
	margin: 0 auto;
	background-color: #fff; /* 달력 배경색 */
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
}

.modal-content {
	background-color: #fff; /* 모달 배경색 */
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 모달 그림자 효과 */
}

.modal-title {
	color: #343a40; /* 모달 제목 색상 */
}

.modal-body p {
	margin-bottom: 10px;
}

.modal-footer {
	justify-content: center;
}

.btn-secondary {
	background-color: #6c757d; /* 닫기 버튼 배경색 */
	color: #fff; /* 닫기 버튼 텍스트 색상 */
	border-color: #6c757d; /* 닫기 버튼 테두리 색상 */
}

.btn-secondary:hover {
	background-color: #495057; /* 닫기 버튼 호버 배경색 */
	border-color: #495057; /* 닫기 버튼 호버 테두리 색상 */
}

.btn-container {
	text-align: center; /* 부모 요소를 가운데 정렬 */
	margin-top: 50px; /* 필요한 경우 상단 여백 추가 */
}

.btn {
	background-color: #8DB600; /* 살짝 연한 초록색 */
	color: #fff;
	padding: 10px 20px; /* 패딩을 좀 더 크게 */
	text-decoration: none;
	border-radius: 20px; /* 더 둥근 모서리 */
	display: block; /* block 요소로 변경 */
	border: none; /* 테두리 없애기 */
	text-align: center; /* 텍스트 가운데 정렬 */
	font-size: 16px; /* 폰트 크기 */
	cursor: pointer; /* 마우스 오버 시 포인터 모양 변경 */
	transition: background-color 0.3s ease; /* 배경색 전환 애니메이션 */
	margin: 0 auto; /* 수평 가운데 정렬 */
	width: 200px; /* 버튼의 고정 너비 */
}
</style>
</head>

<body>
	<h1>예약된 날짜</h1>
	<div id='calendar'></div>

	<!-- 상세 정보 모달 -->
	<div class="modal fade" id="eventModal" tabindex="-1"
		aria-labelledby="eventModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="eventModalLabel">상세 정보</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p>
						<strong>이름:</strong> <span id="eventTitle"></span>
					</p>
					<p>
						<strong>이메일:</strong> <span id="eventEmail"></span>
					</p>
					<p>
						<strong>날짜:</strong> <span id="eventDate"></span>
					</p>
					<p>
						<strong>시간:</strong> <span id="eventTime"></span>
					</p>
					<p>
						<strong>아이디:</strong> <span id="eventId"></span>
					</p>
				</div>

				<div class="modal-footer">

					<c:set var="dto" value="${programView[0]}" />
					<input type="button" class="btn btn-danger" id="deleteEventBtn"
						value="삭제">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>

				</div>
			</div>
		</div>
	</div>
	<div class="btn-container">
		<a href="admin" class="btn">관리자 홈으로</a>
	</div>

	<script
		src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                events: [
                    <c:forEach items="${programView}" var="dto">
                        {
                            title: '${dto.name}',
                            start: '${dto.date}T${dto.time}',
                            email: '${dto.email}',
                            description: '${dto.time}', // 이벤트에 설명 추가
                            id: '${dto.id}' // 이벤트 ID 추가
                            
                        },
                    </c:forEach>
                ],
                eventContent: function(arg) {
                    return {
                        html: '<div style="color: black;">' + arg.event.title + '<br>' + arg.event.extendedProps.description + '</div>'
                    };
                },
                eventClick: function(info) {
                    var modal = new bootstrap.Modal(document.getElementById('eventModal'), {
                        keyboard: false
                    });

                    // 팝업에 이벤트 정보 채우기
                    document.getElementById('eventTitle').innerText = info.event.title;
                    document.getElementById('eventEmail').innerText = info.event.extendedProps.email;
                    document.getElementById('eventDate').innerText = info.event.startStr.split('T')[0]; // ISO 8601에서 날짜 부분만 추출
                    document.getElementById('eventTime').innerText = info.event.extendedProps.description; // 설명에서 시간을 가져와서 표시
                    document.getElementById('eventId').innerText = info.event.id;

                    // 삭제 버튼에 이벤트 ID 추가
                    var deleteBtn = document.getElementById('deleteEventBtn');
                    //deleteBtn.dataset.eventId = info.event.extendedProps.id;
					deleteBtn.dataset.eventId = info.event.id;
					console.log("deleteBtn.dataset.eventId: ",deleteBtn.dataset.eventId);
                    modal.show();
                }
            });

            calendar.render();

            // 삭제 버튼 클릭 시 처리
            document.getElementById('deleteEventBtn').addEventListener('click', function() {
                var eventId = this.dataset.eventId;

                // 삭제 확인 여부를 묻는 팝업을 띄웁니다.
                var confirmation = confirm('이벤트를 삭제하시겠습니까?');
                if (confirmation) {
                    // 삭제를 확인하면, 해당 URL로 페이지를 리로드합니다.
                    window.location.href = './deleteProgram?id=' + eventId;
                }

                // 모달 닫기
                var modal = bootstrap.Modal.getInstance(document.getElementById('eventModal'));
                modal.hide();

                // 새로고침 또는 다시 렌더링 작업 수행
                // calendar.refetchEvents(); 또는 다른 방법을 사용하여 달력을 다시 렌더링할 수 있습니다.
            });
        });
    </script>

</body>
</html>