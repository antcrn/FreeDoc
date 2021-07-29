class CreateAppointements < ActiveRecord::Migration[6.1]
  def change
    create_table :appointements do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
