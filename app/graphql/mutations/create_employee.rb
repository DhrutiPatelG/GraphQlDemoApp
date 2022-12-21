class Mutations::CreateEmployee < Mutations::BaseMutation
  argument :employee_name, String, required: true
  argument :employee_email, String, required: true
  argument :department_id, Integer, required: true

  field :employee, Types::EmployeeType, null: false
  field :errors, [String], null: false

  def resolve(employee_name:, employee_email:, department_id:)
    emp = Employee.new(employee_email: employee_email, employee_name: employee_name, department_id: department_id)
    
    if emp.save
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
