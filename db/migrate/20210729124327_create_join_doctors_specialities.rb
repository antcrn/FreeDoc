class CreateJoinDoctorsSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :join_doctors_specialities do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialities, index: true
      t.timestamps
    end
  end
end
