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

require 'spec_helper'

describe Card do
  pending "add some examples to (or delete) #{__FILE__}"
end
