class Mutations::DeleteDepartment < Mutations::BaseMutation
  argument :id, Integer, required: true

  field :department, String
  field :errors, [String], null: false

  def resolve(id:)
    dept = Department.find(id)
    
    if dept.destroy
      {
        department: "Successfully deleted",
        errors: []
      }
    else
      {
        department: "Not deleted successfully",
        errors: dept.errors.full_messages
      }
    end
  end
end
