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
require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it { should validate_presence_of(:username)}
  it { should validate_presence_of(:password)}

  describe 'uniqueness' do
    before :each do 
      create(:user)
    end

    it { should validate_uniqueness_of(:username) }
  end
end
