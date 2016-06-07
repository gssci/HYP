    $(document).ready(function(){
    
        $.ajax({url: "includes/navbar.html", success: function(result){
            $("body").prepend(result);
        }});
    
});