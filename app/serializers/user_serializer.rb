class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name, :role, :created_at

  attribute :created_at do |user|
    user.created_at&.strftime('%m/%d/%Y')
  end
end
