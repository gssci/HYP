    $(document).ready(function(){
    
        $.ajax({url: "includes/navbar.html", success: function(result){
            $("body").prepend(result);
        }});
        
        $.ajax({url: "includes/footer.html", success: function(result){
            $("body").append(result);
        }});
    
});