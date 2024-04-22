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

  validates :name, :description, :seedbed, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  validate :validate_start_date_enrollment
  validate :validate_end_date_enrollment
  validate :validate_start_training_date
  validate :validate_end_training_date

  def validate_start_date_enrollment
    return if start_date_enrollment > Date.today
    errors.add :start_date_enrollment, I18n.t('training.errors.start_date_enrollment_invalidity')
  end

  def validate_end_date_enrollment
    return if end_date_enrollment > start_date_enrollment
    errors.add :end_date_enrollment, I18n.t('training.errors.end_date_enrollment_invalidity')
  end

  def validate_start_training_date
    return if start_training_date > end_date_enrollment
    errors.add :start_training_date, I18n.t('training.errors.start_training_date_invalidity')
  end

  def validate_end_training_date
    return if end_training_date > start_training_date
    errors.add :end_training_date, I18n.t('training.errors.end_training_date_invalidity')
  end
end
