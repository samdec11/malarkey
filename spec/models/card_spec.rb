# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  num        :integer
#  suit       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :integer
#

require 'spec_helper'

describe Card do
  let(:card) {Card.create(num: 1, suit: 'hearts')}
  let(:game) {FactoryGirl.create(:game)}
  describe '.create' do
    it 'creates an instance of Card' do
      expect(card.id).to_not be nil
      expect(card.num).to eq 1
      expect(card.suit).to eq 'hearts'
    end
    it 'fails validation if num and suit are blank' do
      card1 = Card.create
      expect(card1.id).to be nil
    end
  end
  describe '#game' do
    it 'belongs to a game' do
      game.cards << card
      expect(card.game).to eq game
      expect(game.cards.first).to eq card
    end
  end
    describe '.create_deck' do
    it 'creates a full deck of cards' do
      Card.create_deck(game)
      expect(Card.count).to eq 52
    end
  end
end
