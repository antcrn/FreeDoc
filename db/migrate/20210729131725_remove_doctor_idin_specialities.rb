class RemoveDoctorIdinSpecialities < ActiveRecord::Migration[6.1]
  def change
    remove_column :specialities, :doctor_id
  end
end
