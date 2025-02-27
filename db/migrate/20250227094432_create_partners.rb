class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string :name, null: false, default: ""
      t.string :link, null: false, default: ""
    end
  end
end
