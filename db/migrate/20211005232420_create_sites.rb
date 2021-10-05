class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t| 
      t.integer :site_number
      t.string :facility_name
      t.string :site_address
      t.string :site_city
      t.string :site_state_or_county
      t.string :site_postal_code
      t.string :site_country
      t.timestamps
    end
  end
end
