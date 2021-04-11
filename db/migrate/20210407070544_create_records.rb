class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string     :practice_time, null: false
      t.string     :ball,          null: false
      t.text       :content
      t.text       :check
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
