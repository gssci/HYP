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
            url: "http://polidoriscibetta.altervista.org/php/query_where.php",
            data: {
                select: "*",
                table: "prodotti",
                where: "id='" + id + "'"
            },
            success: function (response) {
                console.log(JSON.parse(response));
                var result = JSON.parse(response);
                var nome = result[0].nome;
                $("title").html(nome);
                $(".nome_prodotto").html(nome);
                $(".prezzo").prepend(result[0].prezzo);
                $(".immagine_prodotto").attr("src", result[0].url_immagine);
                $(".immagine_prodotto").attr("alt", nome);
                $(".goto_categoria").attr("href", "categoria_prodotti.html?id=" + result[0].categoria);
                
            },
            error: function (request, error) {
                console.log("Error");
            }
        });
    });
    
    $(document).ready(function () {
        $.ajax({
            method: "POST",
            crossDomain: true,
            url: "http://polidoriscibetta.altervista.org/php/query_where.php",
            data: {
                select: "nome",
                table: "categorie_prodotti",
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
