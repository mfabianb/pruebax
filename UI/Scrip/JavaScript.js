$(document).ready(function () {
    var url = window.location;
    $('.nav').find('.active').removeClass('active');
    $('.nav li a').each(function () {
        if (this.href == url) {
            $(this).parent().addClass('active');
        }
    });
}); 