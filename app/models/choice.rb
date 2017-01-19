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

class Choice < ActiveRecord::Base

  validates :question_id, :body, :order, presence: true

  belongs_to :question

  has_many :responses
    
end
