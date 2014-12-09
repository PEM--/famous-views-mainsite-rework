# Use meteorhacks:inject-initial for creating a loading spinner while
#  all JS files are loaded.
Inject.rawHead 'loader-style',
  # Force the initial scale for Android and iOS as our spinner may be
  #  distorted by their default values.
  '<meta name="viewport" content="width=device-width,maximum-scale=1,' +
    'initial-scale=1,user-scalable=no">' +
  # The loading spinner needs some theming.
  '<style>' +
    'html{background-color: #36342e;}' +
    'body{color:#ddd;overflow:hidden;width:100%;}' +
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
    '</style>' +
    # Add also the favico as it is overriden by Meteor.
    '<link rel="apple-touch-icon" sizes="57x57" ' +
      'href="/apple-touch-icon-57x57.png">' +
    '<link rel="apple-touch-icon" sizes="114x114" ' +
      'href="/apple-touch-icon-114x114.png">' +
    '<link rel="apple-touch-icon" sizes="72x72" ' +
      'href="/apple-touch-icon-72x72.png">' +
    '<link rel="apple-touch-icon" sizes="144x144" ' +
      'href="/apple-touch-icon-144x144.png">' +
    '<link rel="apple-touch-icon" sizes="60x60" ' +
      'href="/apple-touch-icon-60x60.png">' +
    '<link rel="apple-touch-icon" sizes="120x120"' +
      'href="/apple-touch-icon-120x120.png">' +
    '<link rel="apple-touch-icon" sizes="76x76"' +
      'href="/apple-touch-icon-76x76.png">' +
    '<link rel="apple-touch-icon" sizes="152x152"' +
      'href="/apple-touch-icon-152x152.png">' +
    '<link rel="apple-touch-icon" sizes="180x180" ' +
      'href="/apple-touch-icon-180x180.png">' +
    '<link rel="icon" type="image/png" ' +
      'href="/favicon-192x192.png" sizes="192x192">' +
    '<link rel="icon" type="image/png" ' +
      'href="/favicon-160x160.png" sizes="160x160">' +
    '<link rel="icon" type="image/png" ' +
      'href="/favicon-96x96.png" sizes="96x96">' +
    '<link rel="icon" type="image/png" ' +
      'href="/favicon-16x16.png" sizes="16x16">' +
    '<link rel="icon" type="image/png" ' +
      'href="/favicon-32x32.png" sizes="32x32">' +
    '<meta name="msapplication-TileColor" content="#36342e">' +
    '<meta name="msapplication-TileImage" content="/mstile-144x144.png">'
# The loading spinner is an SVG animation.
# /!\ WARNING: The trick is to create a fake body by injecting data
# in the HTML's head as Meteor is requesting JS  file in a blocking
# fashion and mobile only allow 1 HTTP request at a time on a GPRS network.
Inject.rawHead 'loader-body2', '<body><div class="spinner"></div></body>'
