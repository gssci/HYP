        $(document).ready(function () {
            $(document).bind("mobileinit", function () {
                $.support.cors = true;
                $.mobile.allowCrossDomainPages = true;
            });
            
   
            
            $.ajax({
                url: "includes/navbar.html",
                success: function (result) {
                    $("body").prepend(result);
                    var indirizzo = window.location.href;

                    if (indirizzo.includes("prodott")) {
                        $('#nav-prodotti').addClass('highlight');
                    }
                    if (indirizzo.includes("smartlife")) {
                        $('#nav-smartlife').addClass('highlight');
                    }

                    if (indirizzo.includes("assist")) {
                        $('#nav-assistenza').addClass('highlight');
                    }

                    if (indirizzo.includes("contatt")) {
                        $(".nav-link[href='contatti.html']").addClass('highlight');
                    }

                    if (indirizzo.includes("siamo")) {
                        $(".nav-link[href='chi_siamo.html']").addClass('highlight');
                    }
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

            $(document).on('click', '.linkProdotto', function (event) {
                event.preventDefault(); //avoid navigating to page before this stuff is put into the localStorage
                localStorage.setItem("cat_prodotto", $(this).attr('data-categoria'));
                localStorage.setItem("id_prodotto", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.linkProdotto', function (event) {
                event.preventDefault();
                localStorage.setItem("cat_prodotto", $(this).attr('data-categoria'));
                localStorage.setItem("id_prodotto", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.linkCatProdotto', function (event) {
                event.preventDefault();
                localStorage.setItem("cat_prodotto", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.linkSL', function (event) {
                event.preventDefault();
                localStorage.setItem("cat_SL", $(this).attr('data-categoria'));
                localStorage.setItem("id_SL", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.linkCatSL', function (event) {
                event.preventDefault();
                localStorage.setItem("cat_SL", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.linkAssistenza', function (event) {
                event.preventDefault();
                localStorage.setItem("cat_assistenza", $(this).attr('data-categoria'));
                localStorage.setItem("id_assistenza", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.linkCatAssistenza', function (event) {
                event.preventDefault();
                localStorage.setItem("cat_assistenza", $(this).attr('id'));
                window.location.href = $(this).attr('href');
            });

            $(document).on('click', '.mytoggle', function () {
                $(this).find("p").toggleClass("glyphicon-collapse-up");
                $(this).find("p").toggleClass("glyphicon-collapse-down");
            });
        });
