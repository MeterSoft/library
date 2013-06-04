class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :autor
      t.integer :year
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
