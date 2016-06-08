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
                 el += "<div class='col-xs-4 col-sm-4 col-sm-2'><img src='images/prodotti/categorie/" + cat[i].id + ".png' alt='" + cat[i].nome + "' /><br>" + cat[i].nome + "</div>";
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
                 el += "<div class='well'><h2>"+promo[i].nome+"</h2></br><a href='#' class='btn btn-info' role='button'>Dettagli</a></div>";
             }

             $(".container").append(el);
         },
         error: function (request, error) {
             console.log("Error");
         }
     });
     
     
 };
