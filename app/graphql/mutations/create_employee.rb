class Mutations::CreateEmployee < Mutations::BaseMutation
  argument :employee_name, String, required: true
  argument :employee_email, String, required: true
  argument :department_id, Integer, required: true

  field :employee, Types::EmployeeType, null: false
  type Types::EmployeeType

  def resolve(employee_name:, employee_email:, department_id:)
    Employee.create!(
      employee_email: employee_email,
      employee_name: employee_name,
      department_id: department_id,
      user: context[:current_user]
    )
  end
end
