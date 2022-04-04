$(document).ready(() => {
    $('#hero').css("padding-top", $('#navbar').height())

    // $('.nav-link').each((i) => {
    //     console.log($(this))
    // })
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


