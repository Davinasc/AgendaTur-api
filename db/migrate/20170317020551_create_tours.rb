class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.time :exit_time
      t.time :arrival_time
      t.date :date
      t.integer :vacancies
      t.references :destiny, foreign_key: true
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end
