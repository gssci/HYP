$(document).ready(function () {
      $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php" + "?time=" + Date.now(),
        data: {
            select: "*",
            table: "chi_siamo_innovazione"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var promo = JSON.parse(response);
            var el = "";
            for (var i = 0; i < promo.length; i++) {
                el += "<div class='panel panel-info'><div class='panel-heading'><h3>" + promo[i].testo + "</h3></div></div>";
            }

            $(".testo").html(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });


});

