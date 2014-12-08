Template.home.rendered = ->
  fview = FView.byId 'logosvg'
  mod = fview.parent.modifier
  trans = duration: 1000
  mod.setTransform Transform.rotateY Math.PI/2
  mod.setOpacity 1, trans
  mod.setTransform (Transform.rotateY 0), trans
