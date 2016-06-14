function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
        vars[key] = value;
    });
    return vars;
}
var id = getUrlVars()["id"];

$(document).ready(function () {

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php",
        data: {
            select: "nome",
            table: "categorie_assistenza",
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
            table: "assistenza",
            where: "id_categoria='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var ass = JSON.parse(response);
            var el = "";
            var buttons = "";
            for (var i = 0; i < ass.length; i++) {
                el += "<div class='col-sm-4'><a class='link_assistenza " + ass[i].tipo.replace(/\s+/g, '') + "' href='pagina_assistenza.html?id=" + ass[i].id + "&cat=" + ass[i].id_categoria + "'><div class='myWell'><p class='evidenza'>" + ass[i].nome + "</p></div></a></div>";
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
            where: "id_categoria='" + id + "'"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var result = JSON.parse(response);
            var buttons = "";
            if(result.length>1){
                for (var i = 0; i < result.length; i++) {
                buttons += "<button type='button' class='btn btn-success btn-xs' style='margin:2px;'>" + result[i].tipo + "</button>"
            }

            $("#btns-filtro").append(buttons);
            }
            else{
                $("#btns-filtro").hide();
            }
            
        },
        error: function (request, error) {
            console.log("Error");

        }
    });

});

$(document).on('click', 'button', function () {
    $(this).toggleClass("active");
    $(".link_assistenza").hide();
    var n = $('.active').length;
    if (n > 0) {
        $(".active").each(function () {
            var tipo = $(this).html();
            tipo = tipo.replace(/\s+/g, '');
            $("." + tipo).show();
        });
    } else {
        $(".link_assistenza").show();
    }
});
