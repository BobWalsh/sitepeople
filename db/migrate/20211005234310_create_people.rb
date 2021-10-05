class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :person_first_name
      t.string :person_middle_name
      t.string :person_last_name
      t.text :person_role
      t.integer :person_number, null: false, foreign_key: true
      t.string :person_email, unique: true
      t.string :person_telephone

      t.timestamps
    end
  end
end
