App.Card = DS.Model.extend
  num: DS.attr 'number'
  suit: DS.attr 'string'
  game: DS.belongsTo('App.Game')
