$(document).ready(function () {
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "categorie_assistenza"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var cat = JSON.parse(response);
            var icone = "";

            for (var i = 0; i < cat.length; i++) {
                icone += "<div class='col-xs-4 col-sm-2'><a href='categoria_assistenza.html?id=" + cat[i].id + "'><img src='" + cat[i].url_icona + "' alt='" + cat[i].nome + "' /><br>" + cat[i].nome + "</div>";
            }

            $("#categorie").html(icone);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });

     $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query_where.php" + "?time=" + Date.now(),
        data: {
            select: "*",
            table: "assistenza",
            where: "in_evidenza = 1"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var ev = JSON.parse(response);
            var box_evidenza = "";
            for (var i = 0; i < ev.length; i++) {
                 box_evidenza += "<div class='col-xs-6 col-sm-4'><a href='pagina_assistenza.html?id=" + ev[i].id + "&cat=" + ev[i].id_categoria + "'><div class='well'><p class='evidenza'>" + ev[i].nome + "</p></div></a></div>";
            }

            $("#in_evidenza").append(box_evidenza);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });

});
