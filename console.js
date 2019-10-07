foo = $('.srItem.active.allE.SPORTSE:contains("Oct") .buyButton')
for ( var i = 0; i < foo.length; i++ ) {
  var href = foo[i].href,
      sp   = href.split('/'),
      rev  = sp.reverse(),
      id   = rev[0] || rev[1];
  /*  console.log( href, sp, l, id ); */
  console.log( id );
}
