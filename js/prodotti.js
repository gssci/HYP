$(document).ready(function () {
    $.ajax({
        method: "POST",
        //dataType: "jsonp", //type of data
        crossDomain: true, //localhost purposes
        url: "http://polidoriscibetta.altervista.org/php/query.php" + "?time=" + Date.now(), //Relative or absolute path to file.php file
        data: {
            select: "*",
            table: "categorie_prodotti",
            where: "1"
        },
        success: function (response) {
            var cat = JSON.parse(response);
            var el = "";
            for (var i = 0; i < cat.length; i++) {
                el += "<div class='col-xs-4 col-sm-4 col-sm-2'><a class='linkCatProdotto' id='"+cat[i].id+"' href='categoria_prodotti.html'><img src='" + cat[i].url_icona + "' alt='" + cat[i].nome + "' /><br>" + cat[i].nome + "</a></div>";
            }

            $("#categorie").html(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });

    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php" + "?time=" + Date.now(),
        data: {
            select: "*",
            table: "prodotti",
            where: "in_promozione = 1"
        },
        success: function (response) {
            var promo = JSON.parse(response);
            var el = "";
            for (var i = 0; i < promo.length; i++) {
                el += "<div class='col-sm-4'><div class='well well-sm'><h3>" + promo[i].nome + "</h3><br><a class='linkProdotto' href='pagina_prodotto.html' id='"+promo[i].id+"' data-categoria='"+promo[i].categoria+"'><img src='" + promo[i].url_immagine + "' class='img-responsive img-thumbnail' style='width:60%' alt='" + promo[i].nome + "'></a><br><h4>a soli €" + promo[i].prezzo + "</h4><a href='pagina_prodotto.html' id='"+promo[i].id+"' data-categoria='"+promo[i].categoria+"' class='btn btn-info linkProdotto' role='button'>Dettagli</a></div></div>";
            }

            $(".promozioni").html(el);
        },
        error: function (request, error) {
            console.log("Error");
        }
    });


});
