# == Schema Information
#
# Table name: choices
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  body        :text             not null
#  order       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Choice, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:order) }
  end

  describe 'associations' do
    it { should have_many(:responses) }
    it { should belong_to(:question) }
  end

end
