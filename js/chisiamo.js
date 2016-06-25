$(document).ready(function () {
    
   $(document).on('click','.sub-nav-link', function (){
       $(".sub-nav-link").removeClass("current");
       $(this).addClass("current");
   })
});
