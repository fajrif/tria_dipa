class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :full_name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :message, null: false, default: ""
      t.integer :doctor_id, null: false, default: 0
      t.date :session_date, null: false
      t.string :session_time, null: false, default: ""
      t.timestamps null: false
    end
  end
end
