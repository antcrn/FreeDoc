class RemoveColumnSpecialityDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :speciality
  end
end
