# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_online       :boolean          default(TRUE)
#

require 'spec_helper'

describe User do
  let(:user) {User.create(username: 'Bob', password: 'a', password_confirmation: 'a')}
  describe '.create' do
    it 'creates a new instance of User' do
      expect(user.id).to_not be nil
      expect(user.username).to eq 'Bob'
    end
    it 'fails validation if username and password are blank' do
      user1 = User.create
      expect(user1.id).to be nil
    end
  end
  describe '#games' do
    it 'has many games' do
      game = FactoryGirl.create(:game)
      user.games << game
      expect(game.users.first).to eq user
      expect(user.games.first).to eq game
    end
  end
end
