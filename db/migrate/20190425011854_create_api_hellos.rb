class CreateApiHellos < ActiveRecord::Migration[5.2]
  def change
    create_table :api_hellos do |t|
      t.string :name

      t.timestamps
    end
  end
end
