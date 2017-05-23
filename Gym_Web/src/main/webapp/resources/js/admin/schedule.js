$().ready(function() {
	InitCalendar();
});

function InitCalendar() {
	$calendar = $('#fullCalendar');

	today = new Date();
	y = today.getFullYear();
	m = today.getMonth();
	d = today.getDate();

	$calendar
			.fullCalendar({
				viewRender : function(view, element) {
					// We make sure that we activate the perfect scrollbar when
					// the
					// view isn't on Month
					if (view.name != 'month') {
						$(element).find('.fc-scroller').perfectScrollbar();
					}
				},
				header : {
					left : 'title',
					right : 'prev,next,today'
				},
				defaultDate : today,
				selectable : true,
				selectHelper : true,

				select : function(start, end) {

					// on select we show the Sweet Alert modal with an input
					swal(
							{
								title : 'Create an Event',
								html : '<div class="form-group">'
										+ '<input class="form-control" placeholder="Event Title" id="input-field">'
										+ '</div>',
								showCancelButton : true,
								confirmButtonClass : 'btn btn-success',
								cancelButtonClass : 'btn btn-danger',
								buttonsStyling : false
							}).then(
							function(result) {

								var eventData;
								event_title = $('#input-field').val();

								if (event_title) {
									eventData = {
										title : event_title,
										start : start,
										end : end
									};
									$calendar.fullCalendar('renderEvent',
											eventData, true); // stick?
									// =
									// true
								}

								$calendar.fullCalendar('unselect');

							});
				},
				editable : true,
				eventLimit : true, // allow "more" link when too many events

				// color classes: [ event-blue | event-azure | event-green |
				// event-orange | event-red ]
				events : [ {
					title : 'All Day Event',
					start : new Date(y, m, 1),
					className : 'event-default'
				}, {
					id : 999,
					title : 'Repeating Event',
					start : new Date(y, m, d - 4, 6, 0),
					allDay : false,
					className : 'event-rose'
				}, {
					id : 999,
					title : 'Repeating Event',
					start : new Date(y, m, d + 3, 6, 0),
					allDay : false,
					className : 'event-rose'
				}, {
					title : 'Meeting',
					start : new Date(y, m, d - 1, 10, 30),
					allDay : false,
					className : 'event-green'
				}, {
					title : 'Lunch',
					start : new Date(y, m, d + 7, 12, 0),
					end : new Date(y, m, d + 7, 14, 0),
					allDay : false,
					className : 'event-red'
				}, {
					title : 'Md-pro Launch',
					start : new Date(y, m, d - 2, 12, 0),
					allDay : true,
					className : 'event-azure'
				}, {
					title : 'Birthday Party',
					start : new Date(y, m, d + 1, 19, 0),
					end : new Date(y, m, d + 1, 22, 30),
					allDay : false,
					className : 'event-azure'
				}, {
					title : 'Click for Creative Tim',
					start : new Date(y, m, 21),
					end : new Date(y, m, 22),
					url : 'http://www.creative-tim.com/',
					className : 'event-orange'
				}, {
					title : 'Click for Google',
					start : new Date(y, m, 21),
					end : new Date(y, m, 22),
					url : 'http://www.creative-tim.com/',
					className : 'event-orange'
				} ]
			});
}

function POST() {
	var data = $("#form").serializeFormJSON();
	data.id = 0;
	$
			.ajax({
				url : "/SpringRestHibernateExample/addSchedule",
				method : "POST",
				contentType : "application/json",
				data : JSON.stringify(data),
				success : function() {
					Message("Thành công", "Bạn đã thêm dữ liệu thành công!",
							"success");
					$('#bootstrap-table').bootstrapTable('refresh');
					ResetInput();
				},
				error : function() {
					Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
				}
			});
}

function PUT() {
	var data = $("#form").serializeFormJSON();
	$.ajax({
		url : "/SpringRestHibernateExample/updateSchedule",
		method : "PUT",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function() {
			Message("Thành công", "Bạn đã cập nhật dữ liệu thành công!",
					"success");
			$('#bootstrap-table').bootstrapTable('refresh');
			ResetInput();
		},
		error : function(error) {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}

function DELETE(data) {
	$.ajax({
		url : "/SpringRestHibernateExample/deleteSchedule/" + data.id,
		method : "DELETE",
		contentType : "application/json",
		success : function() {
			Message("Thành công", "Bạn đã xoá dữ liệu này thành công!",
					"success");
			$('#bootstrap-table').bootstrapTable('refresh');
		},
		error : function() {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}