$(function () { //页面加载的操作处理
    $("#mid").on("blur",function () {
        validateMid();
    });

    $("#password").on("blur",function () {
        validatePassword();
    });

    //对于整个的表单需要进行提交前的检查操作
    $("#loginForm").on("submit",function () {
        return validateMid() && validatePassword();//验证都通过后可以提交
    })
});

function validateMid() {
    return validateEmpty("mid");
}

function validatePassword() {
    return validateEmpty("password");
}


function validateEmpty(eleId) {
    if ($("#" + eleId).val() == "") { //如果输入的内容为空
        $("#" + eleId + "Div" ).attr("class","form-group has-error");
        $("#" + eleId + "Span").html("<span class='text-danger'>该地方不能为空 </span>");
        return false;
    } else {
        $("#" + eleId + "Div" ).attr("class","form-group has-success");
        $("#" + eleId + "Span").html("<span class='text-success'>填写正确 </span>");
        return true;
    }

}