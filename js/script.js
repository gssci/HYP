        $(document).bind("mobileinit", function () {
            $.support.cors = true;
            $.mobile.allowCrossDomainPages = true;
        });

        $(document).ready(function () {
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

        });
