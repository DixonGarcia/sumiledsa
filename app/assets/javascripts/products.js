$(document).scroll(function () {
    var y = $(this).scrollTop();
    if (y > 650) {
        $('.sidebar').show("slide")
    } else {
        $('.sidebar').hide("slide");
    }
});