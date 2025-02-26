class CreateAbouts < ActiveRecord::Migration[7.1]
  def change
    create_table :abouts do |t|
      t.string :title, null: false, default: ""
      t.string :description1, null: false, default: ""
      t.string :description2, null: false, default: ""
      t.string :vision, null: false, default: ""
      t.string :mission, null: false, default: ""
    end
  end
end
