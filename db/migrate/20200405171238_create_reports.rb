class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :statement
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
