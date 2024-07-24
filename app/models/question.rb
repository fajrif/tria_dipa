class Question < ApplicationRecord
	extend Mobility
  translates :question, :answer, :category_name

  # Validations
  validates_presence_of :question, :answer

end
