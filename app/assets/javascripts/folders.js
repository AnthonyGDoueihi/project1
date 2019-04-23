const folderListener = function(folderIds, linkIds){
  folderHider(folderIds);
  linkHider(linkIds);
}

const folderHider = function(ids){
  for ( id of ids ){
    const element = $(`#node${id}`);

    if ( element.hasClass( "hidden" ) ){
      element.removeClass( "hidden" );
    }else{
      element.addClass( "hidden" );
    }
  }
}

const linkHider = function(ids){
  for ( id of ids ){
    const element = $(`#gloss${id}`);

    if ( element.hasClass( "hidden" ) ){
      element.removeClass( "hidden" );
    }else{
      element.addClass( "hidden" );
    }
  }
}
