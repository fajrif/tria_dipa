class CreateFacilities < ActiveRecord::Migration[7.1]
  def change
    create_table :facilities do |t|
      t.string :name, null: false, default: ""
      t.string :slug, null: false, default: ""
      t.jsonb :headline, default: {}
      t.jsonb :description, default: {}
      t.jsonb :description1, default: {}
      t.jsonb :description2, default: {}
      t.timestamps
    end
    add_index :facilities, :name, unique: true
    add_index :facilities, :slug, unique: true
  end
end
