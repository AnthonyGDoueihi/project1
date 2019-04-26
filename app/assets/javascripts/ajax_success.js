//On every page when a remote true is applied, this will reload all elements with the class ajax-reloadable
$( document ).ready(function(){
  $( document ).on( "ajax:success", function(){
    $('.ajax-reloadable').load(' .ajax-reloadable');
  });
})
