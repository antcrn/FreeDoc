class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
        t.string :name
        t.timestamps
        end
        add_reference :patients, :city, foreign_key: true
        add_reference :doctors, :city, foreign_key: true
        add_reference :appointements, :city, foreign_key: true
      
  end
end
