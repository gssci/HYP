$(document).ready(function () {
    //Since calls are asyncronous the parameters id and categoria are taken from the localStorage for each case 
    // var categoria = localStorage.getItem("cat_assistenza");
    // var id = localStorage.getItem("id_assistenza");  AKA these variables become unused, same goes for products and smartlife

    $("#toggle_prodotti").hide();

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "assistenza",
            where: "id='" + localStorage.getItem("id_assistenza") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var nome = result[0].nome;
            $("title").html(nome);
            $(".nome_assistenza").html(nome);
            $(".linkCatAssistenza").attr("id", result[0].id_categoria);
            $("#descrizione").append(result[0].descrizione);

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
            table: "categorie_assistenza",
            where: "id='" + localStorage.getItem("cat_assistenza") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var nome = result[0].nome;
            $(".linkCatAssistenza").prepend(nome);

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
            table: "assistenza JOIN faq",
            where: "assistenza.id = faq.id_assistenza AND id_assistenza='" + localStorage.getItem("id_assistenza") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var faq = "";

            for (var i = 0; i < result.length; i++) {
                var id_faq = result[i].id;
                var domanda = result[i].domanda;
                var risposta = result[i].risposta;
                faq += "<div class='panel panel-success'><div class='panel-heading'><h4 class='panel-title'><a class='accordion-toggle' data-toggle='collapse' data-parent='#accordion' href='#faq_" + id_faq + "'>" + domanda + "</a></h4></div><div id='faq_" + id_faq + "' class='panel-collapse collapse'><div class='panel-body'>" + risposta + "</div></div></div>"
            }

            $("#faq").prepend(faq);
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
            select: "id_prodotto",
            table: "prodotti_assistenza",
            where: "id_assistenza='" + localStorage.getItem("id_assistenza") + "'"
        },
        success: function (response) {
            var id_prodotti = JSON.parse(response);
            var prodotti = "";
            if (id_prodotti.length > 0) {
                $("#toggle_prodotti").show();
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
            }



        },
        error: function (request, error) {
            console.log("Error");
        }
    });
});
