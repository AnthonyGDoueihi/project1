const folderListener = function(ids){
  for ( id of ids ){
    console.log (id);
    const element = $(`#${id}`);
    console.log (element);

    if ( element.hasClass( "hidden" ) ){
      element.removeClass( "hidden" );
    }else{
      element.addClass( "hidden" );
    }
  }
}
