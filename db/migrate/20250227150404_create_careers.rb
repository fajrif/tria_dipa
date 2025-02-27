class CreateCareers < ActiveRecord::Migration[7.1]
  def change
    create_table :careers do |t|
      t.string :title, null: false, default: ""
      t.string :description, null: false, default: ""
    end
  end
end
