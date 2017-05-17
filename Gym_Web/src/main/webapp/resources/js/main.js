$(document).ready(function(){
	$("[data-toggle='tooltip']").tooltip();  
	InitControl();
});

function actionFormatter(value, row, index) {
    return [
        '<a class="edit" href="javascript:void(0)" title="Cập nhật">',
        '<i class="glyphicon glyphicon-edit"></i>',
        '</a>',
        '<a class="remove" href="javascript:void(0)" title="Xoá">',
        '<i class="glyphicon glyphicon-remove"></i>',
        '</a>'
    ].join('');
}

window.actionEvents = {
    'click .edit': function (e, value, row, index) {
    	UpdateInput(row);
    },
	'click .remove': function (e, value, row, index) {
	    var r = confirm("Bạn chắc chưa?");
	    if (r == true) {
	     	DELETESinhVien(row);
	    }
	}
};

function GETSinhVien(key){
	var result;
	$.get( "/SpringRestHibernateExample/getSinhViensById/" + key, function(data) {
		result = data;
	 })
	 .done(function() {
		$('div#table table').bootstrapTable('load', result);
		Message("GET");
	 })
	 .fail(function() {
		 alert( "Có lỗi xảy ra!" );
	 });
}

function POSTSinhVien(){
	var data = $("#form").serializeFormJSON();
	data.id = 0;
    $.ajax({
    	url: "/SpringRestHibernateExample/addSinhVien",
  	  	method: "POST",
  	    contentType: "application/json",
  	  	data: JSON.stringify(data),
        success: function() {
    		Message("POST");
        	console.log("POST dữ liệu thành công!");
            console.log(data);
            $('div#table table').bootstrapTable('refresh');
            ResetInput();
        },
        error: function() {
        	alert("Có lỗi xảy ra!");
        }
    });
}

function PUTSinhVien(){
	var data = $("#form").serializeFormJSON();
    $.ajax({
    	url: "/SpringRestHibernateExample/updateSinhVien",
  	  	method: "PUT",
  	    contentType: "application/json",
  	  	data: JSON.stringify(data),
        success: function() {
    		Message("PUT");
        	console.log("PUT dữ liệu thành công!");
            console.log(data);
            $('div#table table').bootstrapTable('refresh');
            ResetInput();
        },
        error: function(error) {
        	alert("Có lỗi xảy ra!" + error);
        }
    });
}

function DELETESinhVien(data){
    $.ajax({
    	url: "/SpringRestHibernateExample/deleteSinhVien/" + data.id,
  	  	method: "DELETE",
  	    contentType: "application/json",
        success: function() {
    		Message("DELETE");
        	console.log("DELETE dữ liệu thành công!");
            console.log("Sinh viên: " + data.mssv + " - " + data.ten + " - " + data.diachi);
            $('div#table table').bootstrapTable('refresh');
        },
        error: function() {
        	alert("Có lỗi xảy ra!");
        }
    });
}

function InitControl(){
	$("#DangKy").click(function(e) {
        e.preventDefault();
		if (CheckInput()){
			if ($("#DangKy").prop("name")=="POST"){
				POSTSinhVien();
			}
			if ($("#DangKy").prop("name")=="PUT"){
				PUTSinhVien();
			}
		}
    });
	$("#Xoa").click(function() {
		ResetInput();			
	});
	$("#Search").bind("change keyup input",function() { 
		var key = $("#Search").val();
		if (key!=""){
			if (!isNaN(key)){
				GETSinhVien(key);
			} else{
				$("#Search").val("");
			}
		}else{
		    $('div#table table').bootstrapTable('refresh');
		}
	});
}

(function ($) {
    $.fn.serializeFormJSON = function () {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function () {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = "'" + [o[this.name]] + "'";
                }
                o[this.name].push(this.value || "'");
            } else {
                o[this.name] = this.value || "'";
            }
        });
        $(this).find("input[type = file]").each(function(i, obj){
        	let file = obj.files[0]; 
        	if (file!=null){
            	o[this.name] = file.name;
        	} else {
            	o[this.name] = "avatar1.jpg";
        	}
        });
        return o;
    };
})(jQuery);

function ResetInput(){
	$('#form').each(function(){
	    this.reset();
	});
	$("#DangKy").prop("name", "POST");
	$("#DangKy").val("Đăng ký");
}

function UpdateInput(data){
	$("#Id").val(data.id);
	$("#MaSo").val(data.mssv);
	$("#HoVaTen").val(data.ten);
	$("#DiaChi").val(data.diachi);
	$("#DangKy").prop("name", "PUT");
	$("#DangKy").val("Cập nhật");
	jQuery('html,body').animate({scrollTop:0},500);
}

function CheckEmpty(string, title, error){
	if ($.trim(string) == ""){
		alert(title + " không được bỏ trống!");
		error++;
	}
	return error;
}

function CheckInput(){
	var error = 0;
	$(".content-item").find(".input").each(function(i, obj) {
		error += CheckEmpty(obj.value, obj.attributes["data-original-title"].value, error);
	});
	if (error != 0){
		return false;
	}
	else{
		return true;
	}
}

function Message(message){
	if ($('#message').css("display")=="none"){
		$('#message').text(message + " dữ liệu thành công!")
                     .fadeIn(500).delay(1000).fadeOut(1500);
	}
}