Card.delete_all
Game.delete_all
User.delete_all

User.create(username: 'Bob', password: 'a', password_confirmation: 'a')