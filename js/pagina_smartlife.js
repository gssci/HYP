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
            $("#sl-body").css("background-image", "url('"+result[0].url_immagine+"')");
            $("#descrizione").append(result[0].descrizione);
            $("#regolamento").append(result[0].activation_and_rules);

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
    
    //Prodotti compatibili
        $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "id_prodotto",
            table: "prodotti_smartlife",
            where: "id_smartlife='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var id_prodotti = JSON.parse(response);
            var prodotti = "";
            for (var i = 0; i < id_prodotti.length; i++) {
                $.ajax({
                    method: "POST",
                    crossDomain: true,
                    url: "http://polidoriscibetta.altervista.org/php/query.php",
                    data: {
                        select: "*",
                        table: "prodotti",
                        where: "id='" + id_prodotti[i].id_prodotto + "'"
                    },
                    success: function (response) {
                        console.log(JSON.parse(response));
                        var result = JSON.parse(response);
                        var el = "";
                        for (var j = 0; j < result.length; j++) {
                            el += "<td><div class='well well-sm' style='height:325px; width:300px;'><h3>" + result[j].nome + "</h3><br><a href='pagina_prodotto.html?id=" + result[j].id + "&cat=" + result[j].categoria + "'><img src='" + result[j].url_immagine + "' class='img-responsive img-thumbnail' alt='" + result[j].nome + "'></a></div></td>";
                        }

                        $("#prodotti").find("tr").append(el);
                    },
                    error: function (request, error) {
                        console.log("Error");
                    }
                });
            }


        },
        error: function (request, error) {
            console.log("Error");
        }
    });

});

$(document).on('click', '.mytoogle', function () {
    $(this).find("p").toggleClass("glyphicon-plus");
    $(this).find("p").toggleClass("glyphicon-minus");
});
