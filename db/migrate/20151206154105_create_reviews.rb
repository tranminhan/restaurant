class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :username
      t.integer :star
      t.string :comment
      t.references :menu_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
