$(document).ready ->
  $('.events').infinitescroll(
    navSelector: 'nav.pagination'
    nextSelector: 'nav.pagination a[rel=next]'
    itemSelector: '.event'
  ,
  (newEvents) ->
    $newEvents = $( newEvents );
    $('.events').masonry( 'appended', $newEvents );
  )

  $('.events').masonry
    itemSelector: '.event'
    isFitWidth: true
