$(document).ready(function(){
    
    $.get("/HYP/includes/navbar.html", function(data){
    $("body").prepend(data);
});
     
    $.get("/HYP/includes/footer.html", function(data){
    $("body").append(data);
});
    
});