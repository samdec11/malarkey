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

class Game < ActiveRecord::Base
  attr_accessible :current_player, :name
  has_and_belongs_to_many :users
  validates :name, :presence => true
end
