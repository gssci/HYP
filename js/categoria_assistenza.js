$(document).ready(function () {
    // var id = localStorage.getItem("cat_assistenza"); unused to make sure the id is taken in each (Asynchronus) call
    $("#filtro-ass").hide();

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
            table: "assistenza",
            where: "id_categoria='" + localStorage.getItem("cat_assistenza") + "'"
        },
        success: function (response) {
            var ass = JSON.parse(response);
            var el = "";
            var buttons = "";
            for (var i = 0; i < ass.length; i++) {
                el += "<a class='linkAssistenza link_assistenza " + ass[i].tipo.replace(/\s+/g, '') + "' href='pagina_assistenza.html' id='" + ass[i].id + "' data-categoria='" + ass[i].id_categoria + "'><div class='myWell myWell2'><p class='evidenza'>" + ass[i].nome + "</p></div></a>";
            }

            $("#lista-assistenza").append(el);
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
            select: "DISTINCT tipo",
            table: "assistenza",
            where: "id_categoria='" + localStorage.getItem("cat_assistenza") + "'"
        },
        success: function (response) {
            var result = JSON.parse(response);
            var buttons = "";
            if (result.length > 1) {
                $("#filtro-ass").show();
                for (var i = 0; i < result.length; i++) {
                    buttons += "<button type='button' class='btn btn-success btn-xs' style='margin:2px;'>" + result[i].tipo + "</button>"
                }

                $("#btns-filtro").append(buttons);
            } else {

                $("#filtro-ass").hide();
            }

        },
        error: function (request, error) {
            console.log("Error");

        }
    });

    

$(document).on('click', 'button', function () {
    $(this).toggleClass("active");
//    $(".link_assistenza").hide();
    $(".link_assistenza").addClass("invisible");
    var n = $('.active').length;
    
    if (n > 0) {
        $(".active").each(function () {
            var tipo = $(this).html();
            tipo = tipo.replace(/\s+/g, '');
            $("." + tipo).removeClass("invisible");
        });
    } else {
    $(".link_assistenza").removeClass("invisible");
    }
});
});

