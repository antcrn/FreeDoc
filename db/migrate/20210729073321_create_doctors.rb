class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :firstname
      t.string :lastname
      t.string :speciality
      t.string :zip_code

      t.timestamps
    end
  end
end
