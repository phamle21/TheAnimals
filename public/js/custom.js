$(document).ready(() => {
    $('#hero').css("padding-top", $('#navbar').height())

    // $('.nav-link').each((i) => {
    //     console.log($(this))
    // })
    $('.filter-btn').on('click', function (i){
        $('.filter-btn').removeClass('bg-success')
        $(this).addClass('bg-success')
    })
})

//Scroll navbar
$(window).on('scroll', () => {
    if (window.pageYOffset > 0) {
        $('#navbar').addClass("py-3")
    }
    if (window.pageYOffset <= 0) {
        $('#navbar').removeClass("py-3")
    }
})
