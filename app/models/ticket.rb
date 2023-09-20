class Ticket < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  belongs_to :assigned_to, class_name: 'User', optional: true

  # Validations and other model logic can be added here
end
