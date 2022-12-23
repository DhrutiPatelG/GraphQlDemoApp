class Employee < ApplicationRecord
  belongs_to :department
  has_many :projects
  belongs_to :user

  def employee_name_email
    "#{employee_name} #{employee_email}"
  end
end
