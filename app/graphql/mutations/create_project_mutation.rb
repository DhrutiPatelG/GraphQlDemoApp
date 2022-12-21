module Mutations
  class CreateProjectMutation < BaseMutation
    argument :project_name, String, required: true
    argument :employee_id, Integer, required: true

    field :project, Types::ProjectType, null: false
    field :errors, [String], null: false

    def resolve(project_name:, employee_id:)
      project = Project.new(project_name: project_name, employee_id: employee_id)
      
      if project.save
        {
          project: project,
          errors: []
        }
      else
        { 
          project: nil,
          errors: project.errors.full_messages
        }
      end
    end
  end
end
