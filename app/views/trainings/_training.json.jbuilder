json.extract! training, :id, :name, :description, :start_date_enrollment, :end_date_enrollment, :start_training_date, :end_training_date, :seedbed_id, :created_at, :updated_at
json.url training_url(training, format: :json)
