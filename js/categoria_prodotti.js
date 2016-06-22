$(document).ready(function () {
    // var id = localStorage.getItem("cat_prodotto"); unused to ensure correct async calls
    var queryCondition = "";
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "nome",
            table: "categorie_prodotti",
            where: "id='" + localStorage.getItem("cat_prodotto") + "'"
        },
        success: function (response) {
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
            table: "prodotti",
            where: "categoria='" + localStorage.getItem("cat_prodotto") + "'"
        },
        success: function (response) {
            var prodotti = JSON.parse(response);
            var el = "";
            for (var i = 0; i < prodotti.length; i++) {
                el += "<div class='col-sm-4'><div class='well well-sm'><h5>" + prodotti[i].produttore + "</h5><br><h3>" + prodotti[i].nome + "</h3><br><a href='pagina_prodotto.html' class='linkProdotto' id='" + prodotti[i].id + "' data-categoria='" + prodotti[i].categoria + "'><img src='" + prodotti[i].url_immagine + "' class='img-responsive img-thumbnail' alt='" + prodotti[i].nome + "'></a><br><h4>€" + prodotti[i].prezzo + "</h4><a href='pagina_prodotto.html' class='btn btn-info linkProdotto' role='button' id='" + prodotti[i].id + "' data-categoria='" + prodotti[i].categoria + "'>Dettagli</a></div></div>";
            }

            $("#lista-prodotti").append(el);
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
            select: "DISTINCT produttore",
            table: "prodotti",
            where: "categoria='" + localStorage.getItem("cat_prodotto") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var checkboxes = "";
            if (result.length > 1) {
                for (var i = 0; i < result.length; i++) {
                    checkboxes += "<button class='btn btn-xs btn-default btn-filtro' style='margin-right:5px; margin-bottom:5px;' data-tipo='produttore' value='produttore=&#39;" + result[i].produttore + "&#39;'>" + result[i].produttore + "</button>"
                }

                $("#produttori").append(checkboxes);
            }

        },
        error: function (request, error) {
            console.log("Error");

        }
    });

    if (localStorage.getItem("cat_prodotto") == 'outlet') {
        $("#in_promozione").removeClass("btn-filtro");
        $("#in_promozione").addClass("disabled");
    }


    $(document).on('click', '#toogleFiltro', function () {
        $("#lista-prodotti").toggleClass("no-padding");
        $(this).toggleClass("active");
        if ($(this).html() == "Nascondi Filtri") {
            $(this).html("Mostra Filtri");
        } else {
            $(this).html("Nascondi Filtri");
        }
    });

    //We about to get crazy y'all
    $(document).on('click', '.btn-filtro', function () {
        //append or remove attr. value from query condition string
        $(this).toggleClass("active");
        var value = $(this).attr("value");
        var classe = $(this).attr("data-tipo");

        if ($(this).is('.active')) {
            if ($("[data-tipo='" + classe + "']").filter('.active').length >= 2) {
                queryCondition = riapriParentesi(queryCondition, classe);
                queryCondition += "OR " + value + ")";
            } else {
                queryCondition += "AND (" + value + ")";
            }

            filtro(queryCondition);
        } else {

            if (count(classe) == 1) {
                queryCondition = queryCondition.replace("AND (" + value + ")", "");

            }

            queryCondition = queryCondition.replace("OR " + value + ")", ")");
            queryCondition = queryCondition.replace("OR " + value, "");

            queryCondition = queryCondition.replace("AND (" + value, "");

            if (count(classe) == 0) {
                $("[data-tipo='" + classe + "']").each(function () {
                    queryCondition = queryCondition.replace("OR " + $(this).attr("value"), "AND (" + $(this).attr("value"));
                    if (count(classe) >= 1) {
                        return false;
                    }
                });
            }

            filtro(queryCondition);
        }

    });

    function count(classe) {
        var count = 0;

        $("[data-tipo='" + classe + "']").each(function () {
            if (queryCondition.match(escapeRegExp("AND (" + $(this).attr("value"))) != null) {
                count = count + 1;
            }
        });

        return count;
    }

    function riapriParentesi(string, classe) {

        var queryCondition = string;
        var regex;

        $("[data-tipo='" + classe + "']").each(function () {
            regex = new RegExp(escapeRegExp("AND (" + $(this).attr("value") + ")"));
            regex2 = new RegExp(escapeRegExp("OR " + $(this).attr("value") + ")"));
            if (regex.test(queryCondition)) {
                queryCondition = queryCondition.replace("AND (" + $(this).attr("value") + ")", "AND (" + $(this).attr("value"));
            }
            if (regex2.test(queryCondition)) {
                queryCondition = queryCondition.replace("OR " + $(this).attr("value") + ")", "OR " + $(this).attr("value"));
            }
        });

        return queryCondition;
    }

    function escapeRegExp(str) {
        return str.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
    }

    //query database based on the checked boxes
    function filtro(query_cond) {
        $("#lista-prodotti").empty();

        $.ajax({
            method: "POST",
            crossDomain: true,
            url: "http://polidoriscibetta.altervista.org/php/query.php",
            data: {
                select: "produttore, nome, id, categoria, url_immagine, prezzo",
                table: "prodotti",
                where: "categoria='" + localStorage.getItem("cat_prodotto") + "'" + " " + queryCondition
            },
            success: function (response) {
                try {
                    var prodotti = JSON.parse(response);
                    var el = "";
                    for (var i = 0; i < prodotti.length; i++) {
                        el += "<div class='col-sm-4'><div class='well well-sm'><h5>" + prodotti[i].produttore + "</h5><br><h3>" + prodotti[i].nome + "</h3><br><a href='pagina_prodotto.html' class='linkProdotto' id='" + prodotti[i].id + "' data-categoria='" + prodotti[i].categoria + "'><img src='" + prodotti[i].url_immagine + "' class='img-responsive img-thumbnail' alt='" + prodotti[i].nome + "'></a><br><h4>€" + prodotti[i].prezzo + "</h4><a href='pagina_prodotto.html' class='btn btn-info linkProdotto'  id='" + prodotti[i].id + "' data-categoria='" + prodotti[i].categoria + "' role='button'>Dettagli</a></div></div>";
                    }

                    $("#lista-prodotti").append(el);
                } catch (err) {
                    $("#lista-prodotti").append("<div class='panel panel-default'><div class='panel-heading text-center'>Nessun prodotto nel database corrisponde a questi filtri...</div></div>");
                }

            },
            error: function (request, error) {
                console.log("Error");
            }
        });
    }


});
