window.Home =
  init: () ->
    $('.page-scroll a').bind 'click', (event) ->
      $anchor = $(this)
      $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top - 50 }, 1250, 'easeInOutExpo'

      event.preventDefault()
      return

    # Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click ->
      $('.navbar-toggle:visible').click()
      return

    # Offset for Main Navigation
    $('#mainNav').affix offset: top: 100

    # Floating label headings for the contact form
    $('body').on('input propertychange', '.floating-label-form-group', (e) ->
      $(this).toggleClass 'floating-label-form-group-with-value', ! !$(e.target).val()
      return
    ).on('focus', '.floating-label-form-group', ->
      $(this).addClass 'floating-label-form-group-with-focus'
      return
    ).on 'blur', '.floating-label-form-group', ->
      $(this).removeClass 'floating-label-form-group-with-focus'
      return
    return
