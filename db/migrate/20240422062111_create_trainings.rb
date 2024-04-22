class CreateTrainings < ActiveRecord::Migration[7.1]
  def change
    create_table :trainings do |t|
      t.string :name
      t.text :description
      t.date :start_date_enrollment
      t.date :end_date_enrollment
      t.date :start_training_date
      t.date :end_training_date
      t.references :seedbed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
