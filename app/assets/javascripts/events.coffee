$ () ->
  $events = $('.events')
  $events.imagesLoaded () ->
    $events.masonry
      itemSelector: '.event'
      isFitWidth: true
  $events.infinitescroll(
    {
      navSelector: 'nav.pagination'
      nextSelector: 'nav.pagination a[rel=next]'
      itemSelector: '.event'
    },
    (newEvents) ->
      $newEvents = $(newEvents).css(opacity: 0)
      $newEvents.imagesLoaded () ->
        $newEvents.animate opacity: 1
        $events.masonry 'appended', $newEvents, true
  )
