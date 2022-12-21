class Mutations::DeleteEmployee < Mutations::BaseMutation
  argument :id, Integer, required: true

  field :employee, String
  field :errors, [String], null: false

  def resolve(id:)
    emp = Employee.find(id)
    
    if emp.destroy
      {
        employee: "Successfully deleted employee #{emp.employee_name}",
        errors: []
      }
    else
      {
        employee: "Not deleted successfully employee #{emp.employee_name}",
        errors: emp.errors.full_messages
      }
    end
  end
end
  