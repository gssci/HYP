$(document).ready(function () {
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "categorie_assistenza",
            where: "1"
        },
        success: function (response) {
            var cat = JSON.parse(response);
            var icone = "";

            for (var i = 0; i < cat.length; i++) {
                icone += "<td><a href='categoria_assistenza.html' class='linkCatAssistenza' id='" + cat[i].id + "'><center><img src='" + cat[i].url_icona + "' alt='" + cat[i].nome + "' /><br>" + cat[i].nome + "</center></a></td>";
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
        url: "http://polidoriscibetta.altervista.org/php/query.php" + "?time=" + Date.now(),
        data: {
            select: "*",
            table: "assistenza",
            where: "in_evidenza = 1"
        },
        success: function (response) {
            var ev = JSON.parse(response);
            var box_evidenza = "";
            for (var i = 0; i < ev.length; i++) {
                 box_evidenza += "<div class='col-sm-4'><a class='linkAssistenza "+ev[i].tipo+"' href='pagina_assistenza.html' id='"+ev[i].id+"' data-categoria='"+ev[i].id_categoria +"' ><div class='myWell'><p class='evidenza'>" + ev[i].nome + "</p></div></a></div>";
            }

            $("#in_evidenza").append(box_evidenza);
            
        },
        error: function (request, error) {
            console.log("Error");
        }
    });
});




