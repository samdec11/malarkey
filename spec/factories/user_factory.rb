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

FactoryGirl.define do
  factory :user do
    username "Bob"
    password "a"
    password_confirmation "a"
  end
end
