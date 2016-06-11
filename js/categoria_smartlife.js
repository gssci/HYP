function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
        vars[key] = value;
    });
    return vars;
}

var id = getUrlVars()["id"];

$(document).ready(function () {
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query_where.php",
        data: {
            select: "*",
            table: "categorie_smartlife",
            where: "id='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            $("#categoria").append(result[0].nome);
            $("#tipo").append(result[0].tipo);
            $("title").html(result[0].nome);

        },
        error: function (request, error) {
            console.log("Error");
        }
    });
    
        $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query_where.php",
        data: {
            select: "*",
            table: "smartlife",
            where: "id_categoria='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            var el = "";
for (var i = 0; i < result.length; i++) {
                el += "<div class='col-sm-4'><div class='well well-sm'><h3>" + result[i].nome + "</h3><br><h5>" + result[i].sottotitolo + "</h5><br><img src='" + result[i].thumbnail + "' class='img-responsive img-thumbnail' alt='" + result[i].nome + "'><br><br><a href='pagina_prodotto.html?id=" + result[i].id + "&cat=" + result[i].id_categoria + "' class='btn btn-warning btn-lg' role='button'>Scopri</a></div></div>";
            }

            $("#lista-servizi").append(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });
});
