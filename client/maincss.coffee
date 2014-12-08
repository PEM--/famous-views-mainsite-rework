# Create stylesheets
# This font is declared as global as it will get used in CSS and DevTools.
@niceFont = 'Helvetica Neue, Helvetica, Arial, sans-serif'

# Create the main stylesheet
css = new CSSC
css
  # Used for the spinner
  .add '.transition-opacity-0',
    webkitTransition: 'opacity 1s'
    mozTransition: 'opacity 1s'
    oTransition: 'opacity 1s'
    transition: 'opacity 1s'
    opacity: 0
