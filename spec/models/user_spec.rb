# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  location        :string           not null
#  summary         :text
#  profile_pic_id  :integer
#  image_file_name :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  latitude        :float
#  longitude       :float
#  gender          :string           not null
#  orientation     :string           not null
#  age             :string           not null
#  life            :text
#  skills          :text
#  favorites       :text
#  thinking        :text
#  friday          :text
#  msg_if          :text
#

require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) { FactoryGirl.build(:user) }


  it { should validate_presence_of(:username) }

  it { should have_many(:responses) }

end
