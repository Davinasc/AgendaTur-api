class CreateDestinies < ActiveRecord::Migration[5.0]
  def change
    create_table :destinies do |t|
      t.string :name
      t.decimal :fixed_value

      t.timestamps
    end
  end
end
