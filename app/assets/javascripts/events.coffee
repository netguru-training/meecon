$ ->
  $('#events').imagesLoaded ->
    $('#events').masonry
      itemSelector: '.box'
      isFitWidth: true
