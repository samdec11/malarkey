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

FactoryGirl.define do
  factory :card do
    num 1
    suit "hearts"
  end
end
