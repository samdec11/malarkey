window.App = Ember.Application.create
  LOG_TRANSITIONS: true

App.Router.map ->
  @route 'tutorial'
  @route 'about'
  @resource 'cards'

App.Store = DS.Store.extend
  revision: 12
