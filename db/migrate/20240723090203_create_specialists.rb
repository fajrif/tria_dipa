class CreateSpecialists < ActiveRecord::Migration[7.1]
  def change
    create_table :specialists do |t|
      t.jsonb :name, default: {}
      t.string :slug, null: false, default: ""
      t.jsonb :headline, default: {}
      t.jsonb :description, default: {}
    end
    add_index :specialists, :name, unique: true
    add_index :specialists, :slug, unique: true
  end
end
