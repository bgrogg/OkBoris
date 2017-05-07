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

