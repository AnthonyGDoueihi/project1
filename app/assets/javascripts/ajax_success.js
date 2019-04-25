$( document ).ready(function(){
  $( document ).on( "ajax:success", function(){
    $('.ajax-reloadable').load(' .ajax-reloadable');
  });
})
