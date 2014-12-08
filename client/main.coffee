# Set FView logging at its bare minimum
Logger.setLevel 'famous-views', 'info'

# Polyfills are necessary for using famo.us
# Note that famo.us's CSS is imported as a package, see pierreric:cssc-famous
famous.polyfills

Meteor.startup ->
  # Reshape DOM: put back title and meta elements in the head.
  # style and script tags can leave in the body tag.
  $head = $ 'head'
  for tag in ['meta', 'title']
    $tags = $ tag
    $head.append $tags.clone()
    $tags.remove()
  # Get spinner and animate its disappearance using opacity
  $spinner = $ '.spinner'
  $spinner.toggleClass 'transition-opacity-0'
  # Remove spinner from the DOM once opacity transition is done
  $spinner.bind 'transitionend webkitTransitionEnd \
    oTransitionEnd MSTransitionEnd', -> $spinner.remove()

# Print a nice and frienly welcome message in the dev tools
FView.ready ->
  console.info "%c\nfamous-views started\n", \
    "font-weight: 300; color: #ec5f3e; font-size: x-large; \
    font-family: #{niceFont}; -webkit-font-smoothing: antialiased;"
