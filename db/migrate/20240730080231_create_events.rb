class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.date :date, null: false
      t.string :title, null: false, default: ""
      t.string :description, null: false, default: ""
			t.timestamps
    end
  end
end
