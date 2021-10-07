class CreateSiteworkers < ActiveRecord::Migration[6.1]
  def change
    create_table :siteworkers do |t|
      t.string :person_first_name
      t.string :person_middle_name
      t.string :person_last_name
      t.text :person_role
      t.string :person_number
      t.string :person_email
      t.string :person_telephone
      t.integer :person_site_number
      t.timestamps
    end
  end
end
