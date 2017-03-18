class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.text :qualification
      t.string :name

      t.timestamps
    end
  end
end
