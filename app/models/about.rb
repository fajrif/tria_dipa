class About < ApplicationRecord
  
  # Validations
  validates_presence_of :title, :description1, :vision, :mission

end