class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.jsonb :question, default: {}
      t.jsonb :answer, default: {}
      t.jsonb :category_name, default: {}
    end
  end
end
