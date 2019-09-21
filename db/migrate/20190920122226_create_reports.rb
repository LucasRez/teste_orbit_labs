class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.bigint :user_id
      t.bigint :comment_id

      t.timestamps
    end
  end
end
