# == Schema Information
#
# Table name: trainings
#
#  id                    :bigint           not null, primary key
#  name                  :string
#  description           :text
#  start_date_enrollment :date
#  end_date_enrollment   :date
#  start_training_date   :date
#  end_training_date     :date
#  seedbed_id            :bigint           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Training < ApplicationRecord
  belongs_to :seedbed
end
