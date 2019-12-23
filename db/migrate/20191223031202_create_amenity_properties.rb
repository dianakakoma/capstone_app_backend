class CreateAmenityProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :amenity_properties do |t|
      t.integer :amenity_id
      t.integer :property_id

      t.timestamps
    end
  end
end
