class AddDateToCareers < ActiveRecord::Migration[7.1]
  def change
    add_column :careers, :date, :date, null: false
  end
end
