function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
        vars[key] = value;
    });
    return vars;
}

var id = getUrlVars()["id"];
var queryCondition = "";

$(document).ready(function () {
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
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
        url: "http://polidoriscibetta.altervista.org/php/query.php",
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
                el += "<div class='col-sm-4'><div class='well well-sm'><h5>" + prodotti[i].produttore + "</h5><br><h3>" + prodotti[i].nome + "</h3><br><a href='pagina_prodotto.html?id=" + prodotti[i].id + "&cat=" + prodotti[i].categoria + "'><img src='" + prodotti[i].url_immagine + "' class='img-responsive img-thumbnail' alt='" + prodotti[i].nome + "'></a><br><h4>€" + prodotti[i].prezzo + "</h4><a href='pagina_prodotto.html?id=" + prodotti[i].id + "&cat=" + prodotti[i].categoria + "' class='btn btn-info' role='button'>Dettagli</a></div></div>";
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
            where: "categoria='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            var checkboxes = "";
            if (result.length > 1) {
                for (var i = 0; i < result.length; i++) {
                    checkboxes += "<label class='checkbox-inline'><input type='checkbox' class='produttore' value='produttore=&#39;" + result[i].produttore + "&#39;'>" + result[i].produttore + "</label>"
                }

                $("#produttori").append(checkboxes);
            }

        },
        error: function (request, error) {
            console.log("Error");

        }
    });
    
    if(id == 'outlet'){
        $("#in_promozione").attr("disabled",true);
        $('#in_promozione').prop('checked', true);
        $('#in_promozione').css("opacity","0.6");
    }
});

$(document).on('click', '#toogleFiltro', function () {
    $("#lista-prodotti").toggleClass("no-padding");
    $(this).toggleClass("active");
    if($(this).html() == "Nascondi Filtri"){
        $(this).html("Mostra Filtri");
    }
    else{
        $(this).html("Nascondi Filtri");
    }
});

//We about to get crazy y'all

$(document).on('change', ':checkbox', function () {
    //append or remove attr. value from query condition string
    var value = $(this).val();
    var classe = $(this).attr("class");

    if ($(this).is(':checked')) {
        if ($('.' + classe).filter(':checked').length >= 2) {
            queryCondition += "OR " + value + " ";
        } else {
            queryCondition += "AND " + value + " ";
        }

        console.log('queryCondition: ' + queryCondition);
        filtro(queryCondition);
    } else {
        queryCondition = queryCondition.replace("OR " + value + " ", "");
        queryCondition = queryCondition.replace("AND " + value + " ", "");

        if (count(classe) < 1) {
            $("." + classe).each(function () {
                queryCondition = queryCondition.replace("OR " + $(this).val() + " ", "AND " + $(this).val() + " ");
                if(count(classe) >= 1){
                    return false;
                }
            });
        }
        
        console.log('queryCondition: ' + queryCondition);
        filtro(queryCondition);
    }

});

function count(classe) {
    var count = 0;

    $("." + classe).each(function () {
        if (queryCondition.match("AND " + $(this).val() + " ") != null) {
            count = count + 1;
        }
    });
    
    return count;
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
            where: "categoria='" + id + "'" + " " + queryCondition
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var prodotti = JSON.parse(response);
            var el = "";
            for (var i = 0; i < prodotti.length; i++) {
                el += "<div class='col-sm-4'><div class='well well-sm'><h5>" + prodotti[i].produttore + "</h5><br><h3>" + prodotti[i].nome + "</h3><br><a href='pagina_prodotto.html?id=" + prodotti[i].id + "&cat=" + prodotti[i].categoria + "'><img src='" + prodotti[i].url_immagine + "' class='img-responsive img-thumbnail' alt='" + prodotti[i].nome + "'></a><br><h4>€" + prodotti[i].prezzo + "</h4><a href='pagina_prodotto.html?id=" + prodotti[i].id + "&cat=" + prodotti[i].categoria + "' class='btn btn-info' role='button'>Dettagli</a></div></div>";
            }

            $("#lista-prodotti").append(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });
}
