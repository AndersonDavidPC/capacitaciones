# == Schema Information
#
# Table name: seedbeds
#
#  id             :bigint           not null, primary key
#  name           :string
#  acronym        :string
#  research_group :string
#  research_area  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Seedbed < ApplicationRecord
  has_many :trainings
end
