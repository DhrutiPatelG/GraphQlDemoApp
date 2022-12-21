class Employee < ApplicationRecord
  belongs_to :department
  has_many :projects

  def employee_name_email
    "#{employee_name} #{employee_email}"
  end
end
