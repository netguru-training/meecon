$ () ->
  $events = $('.events')
  $spinner = $('#spinner')

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
      $spinner.show()
      $newEvents = $(newEvents).css(opacity: 0)
      $newEvents.imagesLoaded () ->
        $spinner.hide()
        @animate(opacity: 1)
        $events.masonry('appended', this, true)
  )
