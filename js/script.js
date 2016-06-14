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
            
                $('[data-toggle="tooltip"]').tooltip(); 

        });
