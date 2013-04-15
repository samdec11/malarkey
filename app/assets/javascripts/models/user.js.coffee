App.User = DS.Model.extend
  username: DS.attr 'string'
  password: DS.attr 'string'
  passwordConfirmation: DS.attr 'string'
  games: DS.