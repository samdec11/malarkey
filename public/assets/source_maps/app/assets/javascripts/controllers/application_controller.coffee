App.ApplicationController = Ember.Controller.extend
  loggedIn: false
  username: ''
  logIn: ->
    name = $('#username').val()
    username = name
    @set 'loggedIn', true
    console.log(name)
    console.log(username)
  logOut: ->
    @set 'loggedIn', false
  showForm: ->
    $('#login').slideDown()
