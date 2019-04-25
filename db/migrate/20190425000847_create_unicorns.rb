class CreateUnicorns < ActiveRecord::Migration[5.2]
  def change
    create_table :unicorns do |t|
      t.integer :age
      t.string :color
      t.string :superpower
      t.string :theme_song

      t.timestamps
    end
  end
end
