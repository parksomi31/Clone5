<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약된 날짜</title>
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css' rel='stylesheet' />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
</style>
</head>

<body>
    <h1>예약된 날짜</h1>
    <div id='calendar'></div>

    <!-- 상세 정보 모달 -->
    <div class="modal fade" id="eventModal" tabindex="-1" aria-labelledby="eventModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="eventModalLabel">상세 정보</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p><strong>이름:</strong> <span id="eventTitle"></span></p>
                    <p><strong>이메일:</strong> <span id="eventEmail"></span></p>
                    <p><strong>날짜:</strong> <span id="eventDate"></span></p>
                    <p><strong>시간:</strong> <span id="eventTime"></span></p>
                </div>
                <div class="modal-footer">
                    <a href="deleteProgram?id=${dto.id}"><button type="button" class="btn btn-danger" id="deleteEventBtn">삭제</button></a>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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

                    // 삭제 버튼에 이벤트 ID 추가
                    var deleteBtn = document.getElementById('deleteEventBtn');
                    deleteBtn.dataset.eventId = info.event.extendedProps.id;

                    modal.show();
                }
            });

            calendar.render();

            // 삭제 버튼 클릭 시 처리
            document.getElementById('deleteEventBtn').addEventListener('click', function() {
                var eventId = this.dataset.eventId;

                // 여기서 eventId를 사용하여 삭제 작업을 수행
                // 예를 들어, AJAX 요청을 이용해 서버에 삭제 요청을 보낼 수 있습니다.
                // 삭제 완료 후 모달을 닫거나 다시 렌더링할 수 있습니다.
                
                // 여기서는 예시로 alert로 확인
                alert('이벤트 ID ' + eventId + '를 삭제합니다.');

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