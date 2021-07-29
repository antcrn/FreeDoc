class CreateSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :specialities do |t|
      t.string :name 
      t.timestamps
    end
    add_reference :specialities, :doctor, foreign_key: true
  end
end
