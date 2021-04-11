class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text       :post, null: false
      t.references :user, foreign_key: true      
      t.timestamps
    end
  end
end
