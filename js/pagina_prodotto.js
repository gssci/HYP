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

    //Specifiche Tecniche
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "*",
            table: "specifiche_tecniche",
            where: "id_prodotto='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            var righe = "";
            for (var name in result[0]) {
                var value = result[0][name];
                if (value != "" && name != "id_prodotto") {
                    var name2 = name.replace(/_/g, ' ');
                    righe += "<tr><td><b>" + name2.charAt(0).toUpperCase() + name2.slice(1) + "</b></td><td>" + value + "</td></tr>";
                }

            }

            $("#tabella-specifiche").append(righe);

        },
        error: function (request, error) {
            console.log("Error");
        }
    });


//Smartlife compatibili
        $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "id_smartlife",
            table: "prodotti_smartlife",
            where: "id_prodotto='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var id_servizi = JSON.parse(response);
            var servizi = "";
            for (var i = 0; i < id_servizi.length; i++) {
                $.ajax({
                    method: "POST",
                    crossDomain: true,
                    url: "http://polidoriscibetta.altervista.org/php/query.php",
                    data: {
                        select: "*",
                        table: "smartlife",
                        where: "id='" + id_servizi[i].id_smartlife + "'"
                    },
                    success: function (response) {
                        console.log(JSON.parse(response));
                        var result = JSON.parse(response);
                        var el = "";
                        for (var j = 0; j < result.length; j++) {
                            el += "<td><div class='well well-sm' style='height:325px; width:300px;'><h3>" + result[j].nome + "</h3><br><h5>" + result[j].sottotitolo + "</h5><br><a href='pagina_smartlife.html?id=" + result[j].id + "&cat=" + result[j].id_categoria + "'><img src='" + result[j].thumbnail + "' class='img-responsive img-thumbnail' alt='" + result[j].nome + "'></a></div></td>";
                        }

                        $("#servizi").find("tr").append(el);
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
    
    
//Assistenza compatibili
        $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "id_assistenza",
            table: "prodotti_assistenza",
            where: "id_prodotto='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var id_assistenza = JSON.parse(response);
            var assistenza = "";
            for (var i = 0; i < id_assistenza.length; i++) {
                $.ajax({
                    method: "POST",
                    crossDomain: true,
                    url: "http://polidoriscibetta.altervista.org/php/query.php",
                    data: {
                        select: "nome,tipo,id,id_categoria",
                        table: "assistenza",
                        where: "id='" + id_assistenza[i].id_assistenza + "'"
                    },
                    success: function (response) {
                        console.log(JSON.parse(response));
                        var ass = JSON.parse(response);
                        var el = "";
                        for (var j = 0; j < ass.length; j++) {
                            el += "<div class='col-sm-4'><a class='link_assistenza " + ass[j].tipo.replace(/\s+/g, '') + "' href='pagina_assistenza.html?id=" + ass[j].id + "&cat=" + ass[j].id_categoria + "'><div class='myWell'><p class='evidenza'>" + ass[j].nome + "</p></div></a></div>";
                        }

                        $("#assistenza").find(".row").append(el);
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
    $(this).find("p").toggleClass("glyphicon-collapse-up");
    $(this).find("p").toggleClass("glyphicon-collapse-down");
});

