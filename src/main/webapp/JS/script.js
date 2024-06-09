
    $(document).ready(function() {
    $('.nav__links a').on('click', function(e) {
        if (this.hash !== '') {
            e.preventDefault();
            const hash = this.hash;

            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 800, function() {
                window.location.hash = hash;
            });
        }
    });
    $(window).on('scroll', function() {
    $('.section__container').each(function() {
    const position = $(this).offset().top;
    const scrollPosition = $(window).scrollTop() + $(window).height();

    if (scrollPosition > position) {
    $(this).addClass('animate');
}
});
});

});
      //script de add


    document.addEventListener("DOMContentLoaded", function() {
        document.getElementById("submitButton").addEventListener("click", function(event) {
            if (!confirm('Are you sure you want to add this registration?')) {
                event.preventDefault();
            }
        });
    });