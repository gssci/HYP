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
                table: "assistenza",
                where: "id='" + id + "'"
            },
            success: function (response) {
                console.log(JSON.parse(response));
                var result = JSON.parse(response);
                var nome = result[0].nome;
                $("title").html(nome);
                $(".nome_assistenza").html(nome);
                $(".goto_categoria").attr("href", "categoria_assistenza.html?id=" + result[0].id_categoria);
                $("#descrizione").append(result[0].descrizione);
                
            },
            error: function (request, error) {
                console.log("Error");
            }
        });
      
      
        $.ajax({
            method: "POST",
            crossDomain: true,
            url: "http://polidoriscibetta.altervista.org/php/query_where.php",
            data: {
                select: "nome",
                table: "categorie_assistenza",
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
      
      $.ajax({
            method: "POST",
            crossDomain: true,
            url: "http://polidoriscibetta.altervista.org/php/query_where.php",
            data: {
                select: "*",
                table: "assistenza JOIN faq",
                where: "assistenza.id = faq.id_assistenza AND id_assistenza='" + id + "'"
            },
            success: function (response) {
                console.log(JSON.parse(response));
                var result = JSON.parse(response);
                var faq = "";
                
                for (var i = 0; i < result.length; i++) {
                    var id_faq = result[i].id;
                    var domanda = result[i].domanda;
                    var risposta = result[i].risposta;
                    faq += "<div class='panel panel-success'><div class='panel-heading'><h4 class='panel-title'><a class='accordion-toggle' data-toggle='collapse' data-parent='#accordion' href='#faq_"+id_faq+"'>"+domanda+"</a></h4></div><div id='faq_"+id_faq+"' class='panel-collapse collapse'><div class='panel-body'>"+risposta+"</div></div></div>"
                }
                
                 $("#inner-container").append("<h2>Domande Frequenti:</h2><br /><br />");
                $("#inner-container").append(faq);
            },
            error: function (request, error) {
                console.log("Error");
            }
        });
    });