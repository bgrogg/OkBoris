# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Question, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:title) }
  end

  describe 'associations' do
    it { should have_many(:choices) }
    it { should have_many(:responses).through(:choices) }
  end

end
