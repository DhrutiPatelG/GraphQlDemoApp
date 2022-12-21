module Mutations
  class UpdateProject < BaseMutation
    argument :project_name, String, required: true
    argument :id, Integer, required: true

    field :project, Types::ProjectType, null: false
    field :errors, [String], null: false

    def resolve(project_name:, id:)
      project = Project.find(id)
      
      if project.update(project_name: project_name)
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
