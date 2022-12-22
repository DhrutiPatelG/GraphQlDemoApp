module Types
  class MutationType < Types::BaseObject
    field :create_department, mutation: Mutations::CreateDepartment
    field :delete_department, mutation: Mutations::DeleteDepartment
    field :update_department, mutation: Mutations::UpdateDepartment
    field :create_employee, mutation: Mutations::CreateEmployee
    field :update_employee, mutation: Mutations::UpdateEmployee
    field :delete_employee, mutation: Mutations::DeleteEmployee
    field :create_project, mutation: Mutations::CreateProjectMutation
    field :update_project, mutation: Mutations::UpdateProject
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
  end
end
