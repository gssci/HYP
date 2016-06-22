$(document).ready(function () {
    var id = localStorage.getItem("cat_SL");

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "categorie_smartlife",
            where: "id='" + localStorage.getItem("cat_SL") + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            $("#categoria").append(result[0].nome);
            $("title").html(result[0].nome);

        },
        error: function (request, error) {
            console.log("Error");
        }
    });

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "smartlife",
            where: "id_categoria='" + localStorage.getItem("cat_SL") + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            var el = "";
            for (var i = 0; i < result.length; i++) {
                el += "<div class='col-sm-4'><div class='well well-sm'><h3>" + result[i].nome + "</h3><br><h5>" + result[i].sottotitolo + "</h5><br><a href='pagina_smartlife.html' class='linkSL' id='" + result[i].id + "' data-categoria='" + result[i].id_categoria + "'><img src='" + result[i].thumbnail + "' class='img-responsive img-thumbnail' alt='" + result[i].nome + "'></a><br><br><a href='pagina_smartlife.html' class='btn btn-warning btn-lg linkSL' id='" + result[i].id + "' data-categoria='" + result[i].id_categoria + "' role='button'>Scopri</a></div></div>";
            }

            $("#lista-servizi").append(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });
});
