# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  current_player :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe Game do
  let(:game) {Game.create(name:'Game 1')}
  describe '.create' do
    it 'creates an instance of Game' do
      expect(game.id).to_not be nil
      expect(game.name).to eq 'Game 1'
    end
    it 'fails validation if name is blank' do
      game1 = Game.create
      expect(game1.id).to be nil
    end
  end
  describe '#users' do
    it 'has many users' do
      user = FactoryGirl.create(:user)
      game.users << user
      expect(game.users.first).to eq user
      expect(user.games.first).to eq game
    end
  end
  describe '#cards' do
    it 'has many cards' do
      card = FactoryGirl.create(:card)
      game.cards << card
      expect(game.cards.first).to eq card
      expect(card.game).to eq game
    end
  end
end