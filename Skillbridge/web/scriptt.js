$(document).ready(function () {
    // Smooth scroll for navigation links
    $('a[href*="#"]').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate(
            {
                scrollTop: $($(this).attr('href')).offset().top - 70,
            },
            500,
            'linear'
        );
    });

    // Animate elements on scroll
    $(window).on('scroll', function () {
        $('.milestone, .course-item').each(function () {
            if ($(this).offset().top < $(window).scrollTop() + $(window).height() - 100) {
                $(this).addClass('visible');
            }
        });
    });

    // Hamburger menu toggle
    $('.hamburger-menu').on('click', function () {
        $(this).toggleClass('active');
        $('.nav-links').toggleClass('active');
    });
});
