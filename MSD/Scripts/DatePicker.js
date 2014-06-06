$(function () {
    $("#datepicker").datepicker({ dateFormat: 'dd/mm/yy', changeYear: true });
   
});
$(".selector").datepicker({ minDate: new Date(2007, 1 - 1, 1) });
//$.datepicker.setDefaults({
//    showOn: "both",
//    buttonImageOnly: true,
//    buttonImage: "calendar.gif",
//    buttonText: "Calendar"
//});
$.datepicker.formatDate("yy-mm-dd", new Date(2007, 1 - 1, 26));
$("#datepicker").datepicker($.datepicker.regional["he"]);
