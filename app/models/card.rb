# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  num        :integer
#  suit       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  face_image :string(255)
#  back_image :string(255)      default("cardback1.jpg")
#

class Card < ActiveRecord::Base
  attr_accessible :face_image, :back_image, :num, :suit

  def Card.create_deck
    (1..13).to_a.each do |number|
      ["clubs", "spades", "diamonds", "hearts"].each do |suit|
        Card.create(num: number, suit: suit)
      end
    end
  end
end
