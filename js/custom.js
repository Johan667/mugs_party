$(document).ready(function() {
    $(document).on('click', '#toggle-sorting-bar', function() {
        if ($('#sorting-bar').hasClass('none') == true) {
            $('#sorting-bar').show('slow').removeClass('none');
        } else {
            $('#sorting-bar').hide(1000).addClass('none');
        }
    });
});