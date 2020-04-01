$ ->
  # acctive menu
  route = $('#active_nav').val()
  if route
    link = $('.sidebar').find('a[data-link=\'' + route + '\']')
    link.addClass 'active'
    list = link.parents('li')
    list.each ->
      li = $(this)
      li.addClass 'menu-open'
      li.find('a:first').addClass 'active'
