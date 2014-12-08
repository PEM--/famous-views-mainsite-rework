# Use meteorhacks:inject-initial for creating a loading spinner while
#  all JS files are loaded.
# The loading spinner needs some theming.
Inject.rawHead 'loader-style',
  '<style>' +
    'html{background-color: #36342e;}' +
    'body{color:#ddd;}' +
    '.spinner {' +
      'bottom:0;height:80px;left:0;margin:auto;position:absolute;' +
      'top:0;right:0;width:80px;' +
      '-webkit-animation: rotation .6s infinite linear;' +
      'animation: rotation .6s infinite linear;' +
      'border-left:6px solid rgba(255,194,0,.20);' +
      'border-right:6px solid rgba(255,194,0,.20);' +
      'border-bottom:6px solid rgba(255,194,0,.20);' +
      'border-top:6px solid rgba(255,194,0,.9);' +
      'border-radius:100%;' +
    '}' +
    '@-webkit-keyframes rotation {' +
      'from {-webkit-transform: rotate(0deg);}' +
      'to {-webkit-transform: rotate(359deg);}' +
    '}' +
    '@-moz-keyframes rotation {' +
      'from {-moz-transform: rotate(0deg);}' +
      'to {-moz-transform: rotate(359deg);}' +
    '}' +
    '@-o-keyframes rotation {' +
      'from {-o-transform: rotate(0deg);}' +
      'to {-o-transform: rotate(359deg);}' +
    '}' +
    '@keyframes rotation {' +
      'from {transform: rotate(0deg);}' +
      'to {transform: rotate(359deg);}' +
    '}' +
    '</style>'
# The loading spinner is an SVG animation.
# /!\ WARNING: The trick is to create a fake body by injecting data
#  in the HTML's head as Meteor is requesting JS  file in a blocking
#  fashion and mobile only allow 1 HTTP request at a time on a GPRS
#  network.
Inject.rawHead 'loader-body2', '<body><div class="spinner"></div></body>'