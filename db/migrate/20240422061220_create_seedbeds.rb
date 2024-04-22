class CreateSeedbeds < ActiveRecord::Migration[7.1]
  def change
    create_table :seedbeds do |t|
      t.string :name
      t.string :acronym
      t.string :research_group
      t.string :research_area

      t.timestamps
    end
  end
end
