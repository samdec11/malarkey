App.User = DS.Model.extend
  username: DS.attr 'string'
  password: DS.attr 'string'
  passwordConfirmation: DS.attr 'string'
  isOnline: DS.attr 'boolean'
  games: DS.hasMany('App.Game')
