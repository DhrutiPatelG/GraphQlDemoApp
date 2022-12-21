class Mutations::CreateDepartment < Mutations::BaseMutation
  argument :department_name, String, required: true

  field :department, Types::DepartmentType, null: false
  field :errors, [String], null: false

  def resolve(department_name:)
    dept = Department.new(department_name: department_name)
    
    if dept.save
      {
        department: dept,
        errors: []
      }
    else
      {
        department: nil,
        errors: dept.errors.full_messages
      }
    end
  end
end
