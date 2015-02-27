$ () ->
  $events = $('.events')

  $events.imagesLoaded () ->
    @masonry
      itemSelector: '.event'
      isFitWidth: true

  $events.infinitescroll(
    navSelector: 'nav.pagination'
    nextSelector: 'nav.pagination a[rel=next]'
    itemSelector: '.event'
    loading: {
      msgText: '<i class="fa fa-spinner fa-pulse fa-3x"></i>'
      img: 'data:image/gif;base64,R0lGODlhAQABAHAAACH5BAUAAAAALAAAAAABAAEAAAICRAEAOw=='
    },
    (newEvents) ->
      $newEvents = $(newEvents).css(opacity: 0)
      $newEvents.imagesLoaded () ->
        @animate(opacity: 1)
        $events.masonry('appended', this, true)
  )
