class RemoveColumnSpecialities < ActiveRecord::Migration[6.1]
  def change
    remove_column :join_doctors_specialities, :specialities_id
    add_reference :join_doctors_specialities, :speciality, foreign_key: true
  end  
end
