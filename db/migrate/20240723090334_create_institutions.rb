class CreateInstitutions < ActiveRecord::Migration[7.1]
  def change
    create_table :institutions do |t|
      t.string :name, null: false, default: ""
      t.string :slug, null: false, default: ""
      t.jsonb :headline, default: {}
      t.jsonb :description, default: {}
      t.jsonb :description1, default: {}
      t.jsonb :description2, default: {}
      t.timestamps
    end
    add_index :institutions, :name, unique: true
    add_index :institutions, :slug, unique: true
  end
end
