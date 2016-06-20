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
