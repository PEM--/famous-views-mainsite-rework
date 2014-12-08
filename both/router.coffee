# Route are managed in client and server for enabling server side rendering
#  as well as routage in the clients.
Meteor.startup ->
  Router.route '/', 'home'
