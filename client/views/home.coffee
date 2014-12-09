Template.home.helpers
  logoSize: ->
    size = .7 * Math.min rwindow.innerWidth(), rwindow.innerHeight()
    [size, size]

Template.home.rendered = ->
  # Access to the SVG logo
  fview = FView.byId 'logosvg'
  mod = fview.parent.modifier
  trans = duration: 1000
  # Initial state of the animation
  mod.setTransform Transform.rotateY Math.PI/2
  # TODO: Opacity animation has to be done at the RenderController level
  #   so that each page let the loading be done and gracefully make the
  #   requestd page appears.
  # Animate the opacity
  mod.setOpacity 1, trans
  # Animate the SVG.
  mod.setTransform (Transform.rotateY 0), trans
