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

class Card < ActiveRecord::Base
  attr_accessible :num, :suit
  validates :num, :suit, :presence => true
  belongs_to :game

  def Card.create_deck(game)
    (1..13).to_a.each do |number|
      ["clubs", "spades", "diamonds", "hearts"].each do |suit|
        card = Card.create(num: number, suit: suit)
        game.cards << card
      end
    end
  end
end
