window.App = Ember.Application.create
  LOG_TRANSITIONS: true

App.Router.map ->
  @route 'about'

App.Store = DS.Store.extend
  revision: 12
