# frozen_string_literal: true

module Types
  class DepartmentType < Types::BaseObject
    
    field :id, ID, null: false
    field :department_name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :employees, [Types::EmployeeType]
    # field :employee, Types::EmployeeType, null: false do
    #   argument :id, ID, required: true
    # end
    field :employees_count, Integer

    def employees_count
      object.employees.size
    end

    # def employee(id:)
    #   Employee.find(id)
    # end
  end
end
