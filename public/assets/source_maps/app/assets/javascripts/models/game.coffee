App.Game = DS.Model.extend
  name: DS.attr 'string'
  currentPlayer: DS.attr 'number'
  users: DS.hasMany('App.User')
  cards: DS.hasMany('App.Card')
