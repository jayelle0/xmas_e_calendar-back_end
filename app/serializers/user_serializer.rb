class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :username
  has_many :calendars
end
