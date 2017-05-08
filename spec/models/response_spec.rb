# == Schema Information
#
# Table name: responses
#
#  id                 :integer          not null, primary key
#  choice_id          :integer          not null
#  user_id            :integer          not null
#  acceptable_choices :string           default("{}"), not null, is an Array
#  importance         :integer
#  explanation        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Response, type: :model do

  describe 'associations' do
    it { should have_one(:question).through(:choice) }
    it { should belong_to(:user) }
    it { should belong_to(:choice) }
  end

end
