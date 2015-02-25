$(document).ready ->
  $container = $('.events')
  $container.imagesLoaded ->
    $container.masonry
      itemSelector: '.event'
      isFitWidth: true
  $container.infinitescroll {
    navSelector: 'nav.pagination'
    nextSelector: 'nav.pagination a[rel=next]'
    itemSelector: '.event'
  },
  (newEvents) ->
    $newEvents = $( newEvents ).css( opacity: 0 )
    $newEvents.imagesLoaded ->
      $newEvents.animate opacity: 1
      $container.masonry 'appended', $newEvents, true
