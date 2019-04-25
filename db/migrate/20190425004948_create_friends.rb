class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :age
      t.belongs_to :unicorn, foreign_key: true

      t.timestamps
    end
  end
end
