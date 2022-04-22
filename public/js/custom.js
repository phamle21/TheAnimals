$(document).ready(() => {
    $('#hero').css("padding-top", $('#navbar').height())

    // $('.nav-link').each((i) => {
    //     console.log($(this))
    // })
    $('.filter-btn').on('click', function (i) {
        $('.filter-btn').removeClass('bg-success')
        $(this).addClass('bg-success')
    })

    $('.nav-link').each(function () {
        if (location.href == this.href) {
            $('.nav-link').removeClass('active')
            this.classList.add("active")
        }
    })

    $('.nav-link').on('click', function () {
        $('.nav-link').removeClass('active')
        $(this).addClass('active')
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
