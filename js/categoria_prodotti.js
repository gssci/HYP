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
            select: "nome",
            table: "categorie_prodotti",
            where: "id='" + id + "'"
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
        url: "http://polidoriscibetta.altervista.org/php/query_where.php",
        data: {
            select: "*",
            table: "prodotti",
            where: "categoria='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var prodotti = JSON.parse(response);
            var el = "";
            for (var i = 0; i < prodotti.length; i++) {
                el += "<div class='col-sm-4'><div class='well well-sm'><h5>" + prodotti[i].produttore + "</h5><br><h3>" + prodotti[i].nome + "</h3><br><img src='" + prodotti[i].url_immagine + "' class='img-responsive img-thumbnail' alt='" + prodotti[i].nome + "'><br><h4>€" + prodotti[i].prezzo + "</h4><a href='pagina_prodotto.html?id=" + prodotti[i].id + "&cat=" + prodotti[i].categoria + "' class='btn btn-info' role='button'>Dettagli</a></div></div>";
            }

            $("#lista-prodotti").append(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });
});
