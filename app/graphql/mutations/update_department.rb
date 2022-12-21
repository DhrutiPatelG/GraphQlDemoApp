class Mutations::UpdateDepartment < Mutations::BaseMutation
  argument :department_name, String, required: true
  argument :id, Integer, required: true

  field :department, Types::DepartmentType, null: false
  field :errors, [String], null: false

  def resolve(department_name:, id:)
    dept = Department.find(id)
    
    if dept.update(department_name: department_name)
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
