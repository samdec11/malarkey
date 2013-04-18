App.CardsRoute = Ember.Route.extend
  model: -> App.Card.find()