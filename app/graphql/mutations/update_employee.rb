class Mutations::UpdateEmployee < Mutations::BaseMutation
  argument :employee_name, String, required: true
  argument :employee_email, String, required: true
  argument :id, Integer, required: true

  field :employee, Types::EmployeeType, null: false
  field :errors, [String], null: false

  
  def resolve(employee_name:, id:, employee_email:)
    emp = Employee.find(id)
    
    if emp.update(employee_name: employee_name, employee_email: employee_email)
      {
        employee: emp,
        errors: []
      }
    else
      {
        employee: nil,
        errors: emp.errors.full_messages
      }
    end
  end
end
