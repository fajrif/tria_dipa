class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :email, null: false, default: ""
      t.string :slug, null: false, default: ""
      t.string :str_no, null: false, default: ""
      t.string :profesional_name, null: false, default: ""
      t.string :full_name, null: false, default: ""
      t.string :title, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :alumni, null: false, default: ""
      t.timestamps null: false
    end
    add_index :doctors, :full_name, unique: true
    add_index :doctors, :slug, unique: true
  end
end
