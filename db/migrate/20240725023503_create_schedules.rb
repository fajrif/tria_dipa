class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.integer :doctor_id, null: false, default: 0
      t.integer :day_code, null: false, default: 0
      t.string :day_name, null: false, default: ""
      t.string :start_time, null: false, default: "06:00"
			t.string :end_time, null: false, default: "22:00"
    end
    add_index :schedules, :doctor_id
  end
end
