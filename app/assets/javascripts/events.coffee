$ () ->
  $events = $('.events')

  $events.imagesLoaded () ->
    @masonry
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
        @animate(opacity: 1)
        $events.masonry('appended', this, true)
  )
