function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
        vars[key] = value;
    });
    return vars;
}

var id = getUrlVars()["id"];
var categoria = getUrlVars()["cat"];

$(document).ready(function () {

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "smartlife",
            where: "id='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            var nome = result[0].nome;
            $("title").html(nome);
            $(".nome").html(nome);
            $(".goto_categoria").attr("href", "categoria_smartlife.html?id=" + result[0].id_categoria);

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
                select: "nome",
                table: "categorie_smartlife",
                where: "id='" + categoria + "'"
            },
            success: function (response) {
                console.log(JSON.parse(response));
                var result = JSON.parse(response);
                var nome = result[0].nome;
                $(".goto_categoria").prepend(nome);
                
            },
            error: function (request, error) {
                console.log("Error");
            }
        });

});
