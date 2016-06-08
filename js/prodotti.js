 $(document).ready(ready);

 function ready() {
     $.ajax({
         method: "POST",
         //dataType: "json", //type of data
         crossDomain: true, //localhost purposes
         url: "php/query.php", //Relative or absolute path to file.php file
         data: {
             select: "*",
             table: "categorie_prodotti"
         },
         success: function (response) {
             console.log(JSON.parse(response));
             var cat = JSON.parse(response);
             var el = "";
             for (var i = 0; i < cat.length; i++) {
                 el += "<div class='col-xs-4 col-sm-4 col-sm-2'><a href='categoria_prodotti.html?id=" + cat[i].id + "'><img src='images/prodotti/categorie/" + cat[i].id + ".png' alt='" + cat[i].nome + "' /><br>" + cat[i].nome + "</div>";
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
         url: "php/query_where.php", 
         data: {
             select: "*",
             table: "prodotti",
             where: "in_promozione = 1"
         },
         success: function (response) {
             console.log(JSON.parse(response));
             var promo = JSON.parse(response);
             var el = "";
             for (var i = 0; i < promo.length; i++) {
                 el+="<div class='col-sm-4'><div class='well well-sm'><h3>"+promo[i].nome+"</h3><br><img src='"+promo[i].url_immagine+"' class='img-responsive img-thumbnail' style='width:60%' alt='"+promo[i].nome+"'><br><h4>a soli €"+promo[i].prezzo+"</h4><a href='pagina_prodotto.html?id=" + promo[i].id + "&cat=" + promo[i].categoria + "'' class='btn btn-info' role='button'>Dettagli</a></div></div>";
             }

        $(".promozioni").html(el);
         },
         error: function (request, error) {
             console.log("Error");
         }
     });
     
     
 };
