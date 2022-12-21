module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :departments, [Types::DepartmentType], null: false

    def departments
      Department.all
    end

    field :department, Types::DepartmentType, null: false do
      argument :id, ID, required: true
    end

    def department(id:)
      Department.find(id)
    end

    field :department_count, Integer, null: false

    def department_count
      Department.count
    end

    field :department_employess_count, Integer, null: false do
      argument :id, ID, required: true
    end

    def department_employess_count(id:)
      Department.find(id).employees.count
    end

    field :employees, [Types::EmployeeType], null: false

    def employees
      Employee.all
    end

    field :employee, Types::EmployeeType, null: false do
      argument :id, ID, required: true
    end

    def employee(id:)
      Employee.find(id)
    end

    field :employee_count, Integer, null: false

    def employee_count
      Employee.count
    end
    
    field :projects, [Types::ProjectType], null: false

    def projects
      Project.all
    end

    field :project, Types::ProjectType, null: false do
      argument :id, ID, required: true
    end

    def project(id:)
      Project.find(id)
    end
  end
end
