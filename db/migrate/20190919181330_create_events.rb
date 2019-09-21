class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :lat
      t.integer :lng

      t.timestamps
    end
  end
end
