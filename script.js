        $(document).ready(function () {
            $(document).bind("mobileinit", function () {
                $.support.cors = true;
                $.mobile.allowCrossDomainPages = true;
            });

            $.ajax({
                url: "includes/navbar.html",
                success: function (result) {
                    //this line creates jQuery object that contains DOM model for loaded page
                    var navbar = jQuery(result);

                    var indirizzo = window.location.href;
                    
                    if (indirizzo.includes("prodott")) {
                        navbar.find('#nav-prodotti').addClass('highlight');
                    }
if (indirizzo.includes("smartlife")) {
                        navbar.find('#nav-smartlife').addClass('highlight');
                    }
                    
                    if (indirizzo.includes("assist")) {
                        navbar.find('#nav-assistenza').addClass('highlight');
                    }
                    
                    if (indirizzo.includes("contatt")) {
                        navbar.find(".nav-link[href='contatti.html']").addClass('highlight');
                    }
                    
                    if (indirizzo.includes("siamo")) {
                        navbar.find(".nav-link[href='chi_siamo.html']").addClass('highlight');
                    }

                    $("body").prepend(navbar);
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

            $(document).on('click', '.linkProdotto', function () {
                localStorage.setItem("cat_prodotto", $(this).attr('data-categoria'));
                localStorage.setItem("id_prodotto", $(this).attr('id'));
            });

            $(document).on('click', '.linkProdotto', function () {
                localStorage.setItem("cat_prodotto", $(this).attr('data-categoria'));
                localStorage.setItem("id_prodotto", $(this).attr('id'));
            });

            $(document).on('click', '.linkCatProdotto', function () {
                localStorage.setItem("cat_prodotto", $(this).attr('id'));
            });

            $(document).on('click', '.linkSL', function () {
                localStorage.setItem("cat_SL", $(this).attr('data-categoria'));
                localStorage.setItem("id_SL", $(this).attr('id'));
            });

            $(document).on('click', '.linkCatSL', function () {
                localStorage.setItem("cat_SL", $(this).attr('id'));
            });

            $(document).on('click', '.linkAssistenza', function () {
                localStorage.setItem("cat_assistenza", $(this).attr('data-categoria'));
                localStorage.setItem("id_assistenza", $(this).attr('id'));
            });

            $(document).on('click', '.linkCatAssistenza', function () {
                localStorage.setItem("cat_assistenza", $(this).attr('id'));
            });

            $(document).on('click', '.mytoogle', function () {
                $(this).find("p").toggleClass("glyphicon-collapse-up");
                $(this).find("p").toggleClass("glyphicon-collapse-down");
            });
        });
