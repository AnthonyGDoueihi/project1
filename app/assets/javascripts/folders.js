const folderListener = function(parentId, depth) {
  const element = $(`#gloss${parentId}`);

  if ( element.hasClass( "hidden" ) ){

    //Open Direct Child and Close others of child this and below
    element.removeClass( "hidden" );
    //TODO make this close other children
  }else{

    //Close All Beneath
    element.addClass( "hidden" );
    closeChild(depth);
  }
}

const closeChild = function(depth){
  let i = depth
  let leave = false

  while (!leave){
    i ++;
    let elements = $(`.depth${i}`);
    if ( elements.length === 0 ){
      leave = true
    }else{

      elements.each(function(){

        if ( !$( this ).hasClass( "hidden" ) ){
          $( this ).addClass( "hidden" );
          }
      })
    }
  }
}

$(document).ready(function(){
  $('.folder-close').click();
})
