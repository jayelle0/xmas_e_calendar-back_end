class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password
  has_many :calendars
end
