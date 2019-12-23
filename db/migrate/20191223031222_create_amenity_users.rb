class CreateAmenityUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :amenity_users do |t|
      t.integer :amenity_id
      t.integer :user_id
      t.boolean :must_have

      t.timestamps
    end
  end
end
