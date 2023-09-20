class User < ApplicationRecord
  has_secure_password

  has_many :tickets, foreign_key: 'created_by'
  has_many :assigned_tickets, class_name: 'Ticket', foreign_key: 'assigned_to'

  # Validations and other model logic can be added here
end
