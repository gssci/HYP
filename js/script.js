        $(document).bind("mobileinit", function () {
            $.mobile.allowCrossDomainPages = true;
        });

        $(document).ready(function () {
            $.support.cors = true; //enables cross origin resource sharing.



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
