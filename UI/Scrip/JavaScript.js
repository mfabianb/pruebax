$(document).ready(function () {
    var url = window.location;
    $('.nav').find('.active').removeClass('active');
    $('.nav li a').each(function () {
        if (this.href == url) {
            $(this).parent().addClass('active');
        }
    });
}); 

$(document).ready(function(){
    var date_input=$('input[name="date"]'); //our date input has the name "date"
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
    };
    date_input.datepicker(options);
})