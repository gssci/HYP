$(document).ready(function () {
             $('[data-toggle="tooltip"]').tooltip(); 
   $(document).on('click','.sub-nav-link', function (){
       $(".sub-nav-link").removeClass("current");
       $(this).addClass("current");
   })
});
