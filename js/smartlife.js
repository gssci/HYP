$(document).ready(function () {
    $.ajax({
        method: "POST",
        crossDomain: true,
        url: "http://polidoriscibetta.altervista.org/php/query.php", 
        data: {
            select: "*",
            table: "categorie_smartlife",
            where: "1"
        },
        success: function (response) {
            console.log(JSON.parse(response));
            var cat = JSON.parse(response);
            var icone = "";
            var banners = "";
            for (var i = 0; i < cat.length; i++) {
                icone += "<div class='col-xs-4 col-sm-2'><a href='categoria_smartlife.html?id=" + cat[i].id + "'><img src='" + cat[i].url_icona + "' alt='" + cat[i].nome + "' /><br>" + cat[i].nome + "</div>";
                
                banners += "<div id='banner_"+i+"' class='banner-cropped img-banner cn'><div class='inner col-xs-10 col-sm-4'><h2 class='white-title'>"+cat[i].nome+"</h2><p>"+cat[i].sottotitolo+"</p><a href='categoria_smartlife.html?id=" + cat[i].id + "' class='btn btn-warning' role='button'>Scopri</a></div></div>";
            }

            $(".categorie").html(icone);
            $(".container").append(banners);
            
            for(var j = 0; j < cat.length; j++){
                $("#banner_"+j).css("background-image","url('"+cat[j].url_banner+"')");
            }
            
        },
        error: function (request, error) {
            console.log("Error");
        }
    });


});
