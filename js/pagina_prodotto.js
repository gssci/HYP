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
    $(document).ready(function () {
        $.ajax({
            method: "POST",
            crossDomain: true,
            url: "php/query_where.php",
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
                $(".prezzo").html(result[0].prezzo);
                $("#immagine_prodotto").attr("src", result[0].url_immagine);
                
            },
            error: function (request, error) {
                console.log("Error");
            }
        });
    });
});
