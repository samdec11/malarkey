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

FactoryGirl.define do
  factory :game do
    name 'Game 1'
    current_player 1
  end
end
