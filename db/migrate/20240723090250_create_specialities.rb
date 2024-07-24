class CreateSpecialities < ActiveRecord::Migration[7.1]
  def change
    create_table :specialities do |t|
			t.belongs_to :doctor
			t.belongs_to :specialist
    end
  end
end
