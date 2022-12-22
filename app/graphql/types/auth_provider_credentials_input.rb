module Types
  class AuthProviderCredentialsInput < BaseInputObject
    graphql_name 'AUTH_PROVIDER_CREDENTIALS'

    argument :email, String, required: true
    argument :password_digest, String, required: true
  end
end