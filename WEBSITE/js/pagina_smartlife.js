$(document).ready(function () {
    //Since calls are asyncronous the parameters id and categoria are taken from the localStorage for each case 
    // var categoria = localStorage.getItem("cat_assistenza");
    // var id = localStorage.getItem("id_assistenza");  AKA these variables become unused, same goes for products and smartlife

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "smartlife",
            where: "id='" + localStorage.getItem("id_SL") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var nome = result[0].nome;
            $("title").html(nome);
            $(".nome").html(nome);
            $(".linkCatSL").attr("id", result[0].id_categoria);
            $("#sl-body").css("background-image", "url('" + result[0].url_immagine + "')");
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
            where: "id='" + localStorage.getItem("cat_SL") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var nome = result[0].nome;
            $(".linkCatSL").prepend(nome);

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
            where: "id_smartlife='" + localStorage.getItem("id_SL") + "'"
        },
        success: function (response) {
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
                        var result = JSON.parse(response);
                        var el = "";
                        for (var j = 0; j < result.length; j++) {
                            el += "<td><div class='well well-sm' style='height:325px; width:300px;'><h3>" + result[j].nome + "</h3><br><a href='pagina_prodotto.html' class='linkProdotto' id='" + result[j].id + "' data-categoria='" + result[j].categoria + "'><img src='" + result[j].url_immagine + "' class='img-responsive img-thumbnail' alt='" + result[j].nome + "'></a></div></td>";
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
