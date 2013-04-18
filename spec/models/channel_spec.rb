# == Schema Information
#
# Table name: channels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Channel do
  describe '.create' do
    it 'creates a new instance of Channel' do
      channel = Channel.create(name: 'Channel 1')
      expect(channel.id).to_not be nil
      expect(channel.name).to eq 'Channel 1'
    end
    it 'fails validation if name is blank' do
      channel = Channel.create
      expect(channel.id).to be nil
    end
  end
end