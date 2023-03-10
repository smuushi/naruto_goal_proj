# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  password   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :user do
    username { "NARUUUUTOOOO" }
    password { Faker::JapaneseMedia::Naruto.demon }

    factory :michaels_waifu do
      username { "Hinata" }
      password { "narutoo" }
    end
  end
end
