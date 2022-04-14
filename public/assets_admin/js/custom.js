$('input').attr("autocomplete","off");

function search_post(){
    var keyword = $('#input_post').val();
    if(keyword.length <1){
        $('#input_post').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_post.php',
            data: {
                keyword: keyword,
            }, 
            success: function(result){
                $('#show_post').html(result);
            }
        });
    }
    return false;
}

function search_post_admin(){
    var keyword = $('#input_post_admin').val();
    if(keyword.length <1){
        $('#input_post_admin').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_post_admin.php',
            data: {
                keyword: keyword,
            }, 
            success: function(result){
                $('#show_post_admin').html(result);
            }
        });
    }
    return false;
}

function search_qa(){
    var keyword = $('#input_qa').val();
    if(keyword.length <1){
        $('#input_qa').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_qa.php',
            data: {
                keyword: keyword,
            }, 
            success: function(result){
                $('#show_qa').html(result);
            }
        });
    }
    return false;
}

function close_notify(){
    $('.notify').css({"display":"none"});
}

$('.sidebar-item a').each(function (){
    // alert(this.href);
    if(this.href == location.href){
        $(this).addClass("active_admin");
    }
});


function edit_chude(id){
    $.ajax({
        type: "POST",
        url: './xuly_admin/edit_chude.php',
        data: {
            chude: id,
        }, 
        success: function(result){
            $('#edit_show_ajax_chude').html(result);
        }
    });
}

function search_chude(){
    var keyword = $('#input_chude').val();
    if(keyword.length <1){
        $('#input_chude').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_chude.php',
            data: {
                keyword: keyword,
            }, 
            success: function(result){
                $('#show_chude').html(result);
            }
        });
    }
    return false;
}
function search_member(){
    var keyword = $('#input_member').val();
    if(keyword.length <1){
        $('#input_member').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_member.php',
            data: {
                keyword: keyword,
            }, 
            success: function(result){
                $('#show_member').html(result);
            }
        });
    }
    return false;
}
function search_staff(){
    var keyword = $('#input_staff').val();
    if(keyword.length <1){
        $('#input_staff').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_staff.php',
            data: {
                keyword: keyword,
            }, 
            success: function(result){
                $('#show_staff').html(result);
            }
        });
    }
    return false;
}

$('#inputSdt_staff').on("keyup", function() {
    var sdt = $('#inputSdt_staff').val();
    $.ajax({
        type: "post",
        url: "./xuly_admin/xacnhan_user.php",
        data: {
            sdt: sdt,
        },
        success: function(result){
            $('#check_sdt_staff').html(result);
        }
    });
    
});
$('#inputUser_staff').on("keyup", function() {
    var username = $('#inputUser_staff').val();
    $.ajax({
        type: "post",
        url: "./xuly_admin/xacnhan_user.php",
        data: {
            username: username,
        },
        success: function(result){
            $('#check_user_staff').html(result);
        }
    });
    
});

$('#register_staff').submit(function() {
    var check_submit = true;
    
    if($('#pass_staff').val() != $('#repass_staff').val()){
        $('#error_repass_staff').html('Mật khẩu xác nhận chưa đúng!');
        check_submit = false;
    }

    if($('#comfirm_user_staff').html() != 'Tài khoản có thể sử dụng'){
        check_submit = false;
    }

    if($('#comfirm_sdt_staff').html() != 'Số điện thoại có thể sử dụng'){
        check_submit = false;
    }

    return check_submit;
});

function edit_staff(id){
    $.ajax({
        type: "POST",
        url: './xuly_admin/edit_staff.php',
        data: {
            id: id,
        }, 
        success: function(result){
            $('#edit_show_ajax_staff').html(result);
        }
    });
}



$('.btn_comment').each(function (i){
    $(this).on("click", function(){
        $(".btn_comment").removeClass("active_btn_cmt");
        $(this).addClass("active_btn_cmt");

        $(".show_div_cmt").css({"display":"none"});

        if( i==0 ){
            $(".show_div_cmt").eq(i).css({"display":"flex"});
        }else if( i==1 ){
            $(".show_div_cmt").eq(i).css({"display":"flex"});
        }else if( i==2 ){
            $(".show_div_cmt").eq(i).css({"display":"flex"});
        }
    });
});

function search_comment_post(){
    var keyword = $('#input_comment_post').val();
    if(keyword.length <1){
        $('#input_comment_post').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_cmt.php',
            data: {
                keyword: keyword,
                cmt_post: true,
            }, 
            success: function(result){
                $('#show_comment_post').html(result);
            }
        });
    }
    return false;
}
function search_comment_post_admin(){
    var keyword = $('#input_comment_post_admin').val();
    if(keyword.length <1){
        $('#input_comment_post_admin').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_cmt.php',
            data: {
                keyword: keyword,
                cmt_post_admin: true,
            }, 
            success: function(result){
                $('#show_comment_post_admin').html(result);
            }
        });
    }
    return false;
}
function search_comment_qa(){
    var keyword = $('#input_comment_qa').val();
    if(keyword.length <1){
        $('#input_comment_qa').attr("placeholder",'Hãy nhập từ khóa muốn tìm kiếm vào đây!');
    }else{
        $.ajax({
            type: "POST",
            url: './xuly_admin/xuly_search_cmt.php',
            data: {
                keyword: keyword,
                cmt_qa: true,
            }, 
            success: function(result){
                $('#show_comment_qa').html(result);
            }
        });
    }
    return false;
}