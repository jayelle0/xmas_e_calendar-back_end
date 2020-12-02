class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username
  has_many :calendars
end
