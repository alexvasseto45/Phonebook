function submitBtnClick() {
    debugger;
    var fName = $("#PersonName").val();
    var lName = $("#PersonSurname").val();
    var phoneNum = $("#ContactNumber").val();
    $("#fName").text('');
    $("#lName").text('');
    $("#phoneNum").text('');

    if (fName == '') {
        $("#PersonNameMsg").text('Името не може да бъде празно!');
    }
    if (lName == '') {
        $("#PersonSurnameMsg").text('Фамилното име не може да бъде празно!');
    }
    if (phoneNum == '') {
        $("#ContactNumberMsg").text('Телефонният номер не може да бъде празен!');
    }
    if (phoneNum != '') {
        var reg = new RegExp('^[0-9]+$');
        var result = reg.test(phoneNum);
        if (result == false) {
            $("#ContactNumberMsg").text('Телефонният номер е невалиден');
        }

    }
    return false;
}