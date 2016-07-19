class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country_ISO_code, limit: 2
      t.string :name_line
      t.string :first_name
      t.string :last_name
      t.string :org_name
      t.string :state_province_region
      t.string :county_district
      t.string :city_town
      t.string :postal_code
      t.string :street_address
      t.string :street_address_2
      t.string :street_address_3
      t.timestamps null: false
    end
  end
end
