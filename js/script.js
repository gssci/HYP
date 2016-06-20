        $(document).ready(function () {
            $(document).bind("mobileinit", function () {
                $.support.cors = true;
                $.mobile.allowCrossDomainPages = true;
            });

            $.ajax({
                url: "includes/navbar.html",
                success: function (result) {
                    $("body").prepend(result);
                }
            });

            $.ajax({
                url: "includes/footer.html",
                success: function (result) {
                    $("body").append(result);
                }
            });

            $(window).scroll(function () {
                if ($(this).scrollTop() > 800) {
                    $('.scrollToTop').fadeIn();
                } else {
                    $('.scrollToTop').fadeOut();
                }
            });

            //Click event to scroll to top
            $('.scrollToTop').click(function () {
                $('html, body').animate({
                    scrollTop: 0
                }, 800);
                return false;
            });


        });

$(document).on('click','.linkProdotto', function () {
localStorage.setItem("id_categoria", $(this).attr('data-categoria'));
localStorage.setItem("id_prodotto", $(this).attr('id'));
});

$(document).on('click','.linkCatProdotto', function () {
   localStorage.setItem("cat_prodotto", $(this).attr('id'));
});
