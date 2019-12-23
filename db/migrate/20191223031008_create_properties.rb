class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :url
      t.string :address
      t.text :notes
      t.integer :rating
      t.integer :user_id
      t.boolean :visited
      t.boolean :available

      t.timestamps
    end
  end
end
